function open -d 'Open a file, directory, or URL in the default application'
  set -l destination $argv[1]

  # windows
  if command -v explorer.exe >/dev/null and command -v wslpath >/dev/null
    # prepend http for localhost
    if string match -rq '^localhost(:[0-9]+)?' $destination
      set destination 'http://'$destination
    end

    # prepend https for other domains
    if string match -rq '^[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+' $destination
      set destination 'https://'$destination
    end

    # convert to windows path if necessary
    if not string match -rq '^[a-zA-Z]+://' $destination
      and not string match -rq '^[a-zA-Z]:\\\\' $destination
      and not string match -rq '^\\\\' $destination
      set destination (wslpath -w $destination)
    end

    command explorer.exe $destination >/dev/null 2>&1
    return 0
  end

  # linux
  if command -v xdg-open >/dev/null
    command xdg-open $destination >/dev/null 2>&1
    return 0
  end

  # macOS
  if command -v open >/dev/null
    command open $destination >/dev/null 2>&1
    return 0
  end

  echo 'open: Unsupported platform'
  return 1
end
