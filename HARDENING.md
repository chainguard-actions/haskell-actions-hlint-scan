<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v0.9.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v0.9.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

Two unpinned references were found:
1. `action.yaml` uses `image: docker://ghcr.io/haskell-actions/hlint-scan:v0.9.0` — a mutable image tag instead of a SHA digest (e.g. `@sha256:<64-hex-char-digest>`). A supply-chain attacker could push a malicious image under the same tag.
2. `.github/workflows/cleanup.yaml` uses `actions/delete-package-versions@v4` — a mutable version tag instead of a pinned 40-character commit SHA. All other `uses:` references in the workflow files are correctly pinned to full SHAs.

Locations:

- `action.yaml:37`
- `.github/workflows/cleanup.yaml:15`

### broad-permissions (severity: medium)

All 8 workflow files set `permissions: read-all` at the top level. Per the security check, `read-all` is an overly broad permission grant and must be replaced with specific minimal permission scopes (e.g. `contents: read`). Affected files: build.yaml, cleanup.yaml, dependency.yaml, hlint.yaml, ormolu.yaml, release.yaml, scorecard.yaml, stale.yaml.

Locations:

- `.github/workflows/build.yaml:2`
- `.github/workflows/cleanup.yaml:3`
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

Fixed two unpinned references: (1) Pinned the Docker container image in action.yaml from mutable tag v0.9.0 to immutable digest docker://ghcr.io/haskell-actions/hlint-scan:v0.9.0@sha256:e870ce8c4563c1522a9b1ec96d69affdb982ff7dbe4b0e2c9c0f29ddd2ca534b. (2) Pinned actions/delete-package-versions in cleanup.yaml from @v4 to @0d39a63126868f5eefaa47169615edd3c0f61e20 # v4. Fixed broad permissions in all 8 workflow files by replacing `permissions: read-all` with specific minimal scopes: build.yaml gets `contents: read`; cleanup.yaml gets `packages: write` (needed to delete package versions); dependency.yaml gets `contents: read` and `pull-requests: read`; hlint.yaml, ormolu.yaml, release.yaml, scorecard.yaml, and stale.yaml all get `contents: read`. Jobs that require additional write permissions (security-events, id-token, issues, pull-requests, packages) already have those defined at the job level.

