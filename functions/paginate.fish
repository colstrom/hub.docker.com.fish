function paginate -a resource index token
  if test -z $resource
    exit 1
  end

  test -z $index
  and set index 1

  test -z $token
  and set token (token)

  set url (api "$resource/?page_size=100&page=$index")

  set response (https $url (authorization JWT $token))

  echo $response | jq --raw-output .results[]

  if echo $response | jq --exit-status .next//empty >/dev/null
    paginate $resource (math 1 + $index) $token
  end
end
