#!/usr/bin/env bash
set -euo pipefail

DIRNAME="$(dirname "$0")"

jsonnet -S "${DIRNAME}/jsonnetfiles.jsonnet"
