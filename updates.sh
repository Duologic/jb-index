#!/usr/bin/env bash
set -euo pipefail

DIRNAME="$(dirname "$0")"

[ -f jsonnetfile.lock.json ] && \
    jsonnet \
        --tla-code jsonnetfile='import "./jsonnetfile.lock.json"' \
        -S "${DIRNAME}/updates.jsonnet"
