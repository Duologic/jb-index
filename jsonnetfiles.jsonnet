local files = import 'index.jsonnet';

local all =
  std.foldl(
    function(acc, f)
      acc + (
        if 'dependencies' in f
        then f.dependencies
        else []
      ),
    files,
    []
  );

local nodups =
  std.set(
    all,
    function(d)
      std.md5(std.manifestJson(d))
  );

local urls = std.sort([
  '%s/%s@%s' % [
    d.source.git.remote,
    d.source.git.subdir,
    d.version,
  ]
  for d in nodups
  if 'git' in d.source
  if std.startsWith(d.source.git.remote, 'http')
]);


std.join('\n', urls)
