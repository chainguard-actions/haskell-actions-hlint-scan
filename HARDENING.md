<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.3.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **haskell-actions--hlint-scan/v1.3.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable version tag instead of a SHA256 digest. The image `docker://ghcr.io/haskell-actions/hlint-scan:v1.3.0` can be silently replaced at any time, enabling supply-chain attacks. It should be pinned to a specific SHA256 digest, e.g. `docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest> # v1.3.0`.

Locations:

- `action.yaml:55`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yaml from `docker://ghcr.io/haskell-actions/hlint-scan:v1.3.0` to `docker://ghcr.io/haskell-actions/hlint-scan@sha256:2191ddbe3ed0d0e4eadaa5a23fc52f29d2de8982b05d29acf662e40e2b8bbed3 # v1.3.0`. The original tag is preserved as a comment for readability.

