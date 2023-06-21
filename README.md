# jb-index

This is a zsh-completion definition (compdef) for [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler/) and a few scripts to support this.

`jb update` completion works out of the box, it'll look for entries in the `jsonnetfile.lock.json` file in the current directory.

`jb install` does not work out of the box, it expects an index.jsonnet file with an array of `jsonnetfile.json` imports. I currently render this with `update-index.sh`, which finds all `jsonnetfile.json` in `~/git` for me to construct a nice index.
