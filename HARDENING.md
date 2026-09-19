<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.4.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **haskell-actions--hlint-scan/v1.4.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable version tag instead of an immutable SHA digest. The image `docker://ghcr.io/haskell-actions/hlint-scan:v1.4.0` uses the tag `v1.4.0`, which can be changed at any time by the registry owner, creating a supply-chain attack risk. It should be pinned to a specific SHA digest, e.g. `docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`

Locations:

- `action.yaml:48`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yaml from `docker://ghcr.io/haskell-actions/hlint-scan:v1.4.0` to `docker://ghcr.io/haskell-actions/hlint-scan:v1.4.0@sha256:8b3630d73ebbf5d61210febf6fcb2fe354418585a0845d382ca30a16c1d48859`. The docker:// scheme and v1.4.0 tag are preserved inline alongside the immutable digest.

