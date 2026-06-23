<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.0.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **haskell-actions--hlint-scan/v1.0.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image reference with a mutable version tag instead of a SHA digest. `image: docker://ghcr.io/haskell-actions/hlint-scan:v1.0.0` should be pinned to a specific SHA256 digest (e.g., `image: ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`) to prevent supply-chain attacks via tag mutation.

Locations:

- `action.yaml:37`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yaml from the mutable tag `docker://ghcr.io/haskell-actions/hlint-scan:v1.0.0` to the immutable digest `docker://ghcr.io/haskell-actions/hlint-scan@sha256:174ea0715940533bad591908b7f9c8cc00268e3026284dd74c38a083e6dd70b3 # v1.0.0`. The original tag is preserved as a comment for readability.

