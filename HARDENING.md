<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v1.0.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable tag (`docker://ghcr.io/haskell-actions/hlint-scan:v1.0.0`) instead of a SHA digest. This means the image can be silently replaced with a different version, enabling supply-chain attacks. It should be pinned to a specific SHA digest, e.g. `docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`.

Locations:

- `action.yaml:43`

### broad-permissions (severity: medium)

All 7 workflow files use `permissions: read-all` at the top level. The `read-all` permission grants overly broad read access across all GitHub API scopes and must be replaced with specific minimal permissions (e.g. `contents: read`) appropriate to each workflow's needs.

Locations:

- `.github/workflows/build.yaml:2`
- `.github/workflows/dependency.yaml:2`
- `.github/workflows/hlint.yaml:2`
- `.github/workflows/ormolu.yaml:2`
- `.github/workflows/release.yaml:3`
- `.github/workflows/scorecard.yaml:20`
- `.github/workflows/stale.yaml:12`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, broad-permissions

**Notes:**

1. Pinned Docker image in action.yaml from mutable tag `docker://ghcr.io/haskell-actions/hlint-scan:v1.0.0` to immutable digest `docker://ghcr.io/haskell-actions/hlint-scan:v1.0.0@sha256:174ea0715940533bad591908b7f9c8cc00268e3026284dd74c38a083e6dd70b3`, preserving the docker:// scheme and tag inline. 2. Replaced `permissions: read-all` with `permissions:\n  contents: read` in all 7 workflow files (build.yaml, dependency.yaml, hlint.yaml, ormolu.yaml, release.yaml, scorecard.yaml, stale.yaml). Each workflow already had job-level permissions blocks granting any additional write access required (e.g., security-events: write, id-token: write, packages: write, issues: write, pull-requests: write), so the top-level only needs contents: read for repository checkout.

