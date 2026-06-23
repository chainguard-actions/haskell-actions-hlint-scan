<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.2.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **haskell-actions--hlint-scan/v1.2.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable version tag instead of a SHA digest. `image: docker://ghcr.io/haskell-actions/hlint-scan:v1.2.0` uses the tag `v1.2.0`, which can be silently replaced by a different image. It should be pinned to a specific SHA digest, e.g. `image: ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest> # v1.2.0`.

Locations:

- `action.yaml:47`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Replaced the mutable Docker image tag `docker://ghcr.io/haskell-actions/hlint-scan:v1.2.0` with the pinned SHA digest `docker://ghcr.io/haskell-actions/hlint-scan@sha256:e29c0529d40b759655e7d861add6b96c2e72b0aa28dc493dbdba5b4b6fda5ac6 # v1.2.0` in action.yaml line 47.

