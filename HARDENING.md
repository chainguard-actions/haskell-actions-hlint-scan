<!-- markdownlint-disable -->

# Hardening Report: haskell-actions--hlint-scan/v1.1.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **haskell-actions--hlint-scan/v1.1.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The action.yaml uses a Docker image referenced by a mutable version tag instead of an immutable SHA digest. The image `docker://ghcr.io/haskell-actions/hlint-scan:v1.1.0` uses the tag `v1.1.0`, which can be silently replaced with different (potentially malicious) content. It should be pinned to a specific SHA256 digest, e.g. `docker://ghcr.io/haskell-actions/hlint-scan@sha256:<64-hex-char-digest>`.

Locations:

- `action.yaml:44`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yaml from `docker://ghcr.io/haskell-actions/hlint-scan:v1.1.0` to `docker://ghcr.io/haskell-actions/hlint-scan@sha256:f160201c08a1694ccdd633e47a84693f87cf43691265bc0975fc1cb3241ffe66 # v1.1.0`, using the immutable SHA256 digest resolved via the Docker Registry API.

