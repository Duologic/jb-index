#!/usr/bin/env bash

render() {
  echo "["
  find ~/git -name jsonnetfile.json | xargs -i echo import \'{}\',
  echo "]"
}

render | jsonnetfmt - > index.jsonnet
