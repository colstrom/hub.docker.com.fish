function tags -a namespace repository
  if test (count $argv) != 2
    return 1
  end

  paginate repositories/$namespace/$repository/tags | jq --raw-output .name
end
