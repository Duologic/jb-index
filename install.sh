#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

DIRNAME="$(dirname "$0")"

INDEX=$(jsonnet -S "${DIRNAME}/jsonnetfiles.jsonnet" | sed -e "s/\(.*\)/'\1'/")

cat template | sed -e "s#{{install_args}}#${INDEX//$'\n'/\\n}#g" > _jb
