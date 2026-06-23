<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v0.9.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **haskell-actions--hlint-scan/v0.9.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image pinned to a mutable tag (`v0.9.0`) instead of an immutable SHA digest. This means the image could be replaced with a malicious version without changing the tag, enabling a supply-chain attack. The failing reference is: `image: docker://ghcr.io/haskell-actions/hlint-scan:v0.9.0`. It should be replaced with a SHA digest reference such as `image: docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`.

Locations:

- `action.yaml:43`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Replaced the mutable Docker image tag reference `docker://ghcr.io/haskell-actions/hlint-scan:v0.9.0` with the immutable SHA digest reference `docker://ghcr.io/haskell-actions/hlint-scan@sha256:e870ce8c4563c1522a9b1ec96d69affdb982ff7dbe4b0e2c9c0f29ddd2ca534b # v0.9.0` in action.yaml line 43. The tag is preserved as a comment for readability.

