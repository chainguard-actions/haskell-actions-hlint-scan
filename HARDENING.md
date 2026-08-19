<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.3.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v1.3.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml Docker image reference uses a mutable tag (`v1.3.0`) instead of an immutable SHA digest. This means the image could be silently replaced with a different (potentially malicious) version. The failing reference is: `image: docker://ghcr.io/haskell-actions/hlint-scan:v1.3.0`. It should be pinned to a SHA digest, e.g. `image: ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest> # v1.3.0`.

Locations:

- `action.yaml:55`

### broad-permissions (severity: medium)

Multiple workflow files set `permissions: read-all` at the top level. This grants overly broad read access across all scopes and should be replaced with specific minimal permissions (e.g. `contents: read`, `security-events: write`, etc.) scoped to what each workflow actually needs. Affected files: build.yaml, coverage.yaml, dependency.yaml, hlint.yaml, ormolu.yaml, release.yaml, scorecard.yaml, stale.yaml.

Locations:

- `.github/workflows/build.yaml:2`
- `.github/workflows/coverage.yaml:2`
- `.github/workflows/dependency.yaml:2`
- `.github/workflows/hlint.yaml:2`
- `.github/workflows/ormolu.yaml:2`
- `.github/workflows/release.yaml:3`
- `.github/workflows/scorecard.yaml:19`
- `.github/workflows/stale.yaml:12`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, broad-permissions

**Notes:**

Fixed two findings: (1) Pinned the Docker image in action.yaml from mutable tag v1.3.0 to immutable digest sha256:2191ddbe3ed0d0e4eadaa5a23fc52f29d2de8982b05d29acf662e40e2b8bbed3, preserving the docker:// scheme and tag inline. (2) Replaced `permissions: read-all` in all 8 workflow files with minimal specific permissions: build.yaml and coverage.yaml get `contents: read`; dependency.yaml gets `contents: read` + `pull-requests: read`; hlint.yaml, ormolu.yaml, release.yaml, and scorecard.yaml get `contents: read` (job-level permissions handle the rest); stale.yaml gets `permissions: {}` since all needed permissions are already at the job level.

