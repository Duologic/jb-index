# jb-index

This is a zsh-completion definition (compdef) for [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler/) and a few scripts to support this.

`jb update` completion works out of the box, it'll look for entries in the `jsonnetfile.lock.json` file in the current directory.

For `jb install` we first need to render an index.jsonnet file with an array of `jsonnetfile.json` imports. I currently render this with `update-index.sh`, which finds all `jsonnetfile.json` in `~/git` for me to construct a nice index.

## install

Generate `_jb`:

```
./update-index.sh
./install.sh
```

Symlink the compdef:

```
ln -sfn $PWD/_jb ~/.zsh/zsh-completions
```

Update `fpath` and load `compinit`:

```
fpath=($HOME/.zsh-completions $fpath)
autoload -U compinit
compinit
```
