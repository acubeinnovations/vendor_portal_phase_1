json.array!(@usertypes) do |usertype|
  json.extract! usertype, :id, :userrole
  json.url usertype_url(usertype, format: :json)
end
