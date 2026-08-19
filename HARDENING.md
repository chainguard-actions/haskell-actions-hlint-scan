<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.2.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v1.2.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable tag (`docker://ghcr.io/haskell-actions/hlint-scan:v1.2.0`) instead of a SHA digest. This means the image could be replaced with a different version without changing the action definition, creating a supply-chain risk. It should be pinned to a specific SHA digest, e.g. `docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`.

Locations:

- `action.yaml:43`

### broad-permissions (severity: medium)

Multiple workflow files set `permissions: read-all` at the top level. The `read-all` permission grants read access to all scopes and is considered overly broad. Each workflow should instead declare only the specific minimal permissions it requires.

Locations:

- `.github/workflows/build.yaml:2`
- `.github/workflows/coverage.yaml:2`
- `.github/workflows/dependency.yaml:2`
- `.github/workflows/hlint.yaml:2`
- `.github/workflows/ormolu.yaml:2`
- `.github/workflows/release.yaml:3`
- `.github/workflows/scorecard.yaml:21`
- `.github/workflows/stale.yaml:10`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, broad-permissions

**Notes:**

1. Pinned Docker image in action.yaml: `docker://ghcr.io/haskell-actions/hlint-scan:v1.2.0` → `docker://ghcr.io/haskell-actions/hlint-scan:v1.2.0@sha256:e29c0529d40b759655e7d861add6b96c2e72b0aa28dc493dbdba5b4b6fda5ac6` (digest resolved from registry). 2. Replaced `permissions: read-all` with `permissions:\n  contents: read` in all 8 workflow files (build.yaml, coverage.yaml, dependency.yaml, hlint.yaml, ormolu.yaml, release.yaml, scorecard.yaml, stale.yaml). Each workflow's job-level permissions already declare the specific write permissions needed, so the top-level only requires contents: read.

