function(jsonnetfile)
  local urls = std.sort([
    '%s/%s' % [
      d.source.git.remote,
      d.source.git.subdir,
    ]
    for d in jsonnetfile.dependencies
    if 'git' in d.source
  ]);

  std.join('\n', urls)
