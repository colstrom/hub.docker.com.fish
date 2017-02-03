function token
  template users/login | https (api users/login) (json -) | jq --raw-output .token//empty
end
