function template -a name
  if test -z "$name"
    return 1
  end

  set --query TEMPLATES
  or set TEMPLATES ~/.etc/templates

  set template "$TEMPLATES/$name"

  test -f "$template"
  and cat "$template" | envsubst
end
