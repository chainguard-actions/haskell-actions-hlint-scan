<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.1.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v1.1.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

Two unpinned references were found:
1. `.github/workflows/build.yaml` uses `haskell-actions/setup@v2` — a mutable tag reference instead of a full 40-character commit SHA. This is vulnerable to supply-chain attacks if the tag is moved.
2. `action.yaml` uses `image: docker://ghcr.io/haskell-actions/hlint-scan:v1.1.0` — a mutable image tag instead of a SHA digest (e.g. `@sha256:<64-hex-char-digest>`). A tag can be silently overwritten to point to a malicious image.

Locations:

- `.github/workflows/build.yaml:21`
- `action.yaml:47`

### broad-permissions (severity: medium)

Eight workflow files declare `permissions: read-all` at the top level. The `read-all` shorthand grants read access to all available scopes, which is broader than necessary. Each workflow should instead declare only the specific minimal permissions it requires.

Locations:

- `.github/workflows/build.yaml:2`
- `.github/workflows/coverage.yaml:2`
- `.github/workflows/dependency.yaml:2`
- `.github/workflows/hlint.yaml:2`
- `.github/workflows/ormolu.yaml:2`
- `.github/workflows/release.yaml:3`
- `.github/workflows/scorecard.yaml:30`
- `.github/workflows/stale.yaml:10`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, broad-permissions

**Notes:**

Fixed two unpinned references: (1) pinned haskell-actions/setup@v2 to full SHA cd0d9bdd65b20557f41bea4dbe43d0b5fbbfe553 in build.yaml; (2) pinned the Docker container image in action.yaml to docker://ghcr.io/haskell-actions/hlint-scan:v1.1.0@sha256:f160201c08a1694ccdd633e47a84693f87cf43691265bc0975fc1cb3241ffe66 (preserving docker:// scheme and tag). Fixed broad permissions in all 8 workflow files by replacing 'permissions: read-all' with 'permissions: contents: read' — each workflow already had job-level permissions for any additional write access required.

