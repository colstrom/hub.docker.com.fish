function repositories -a namespace
  if test -z $namespace
    return 1
  end

  paginate repositories/$namespace | jq --raw-output .name
end
