json.array!(@referencestyles) do |referencestyle|
  json.extract! referencestyle, :id, :name
  json.url referencestyle_url(referencestyle, format: :json)
end
