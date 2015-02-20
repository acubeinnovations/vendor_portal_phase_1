json.array!(@processmasters) do |processmaster|
  json.extract! processmaster, :id, :division
  json.url processmaster_url(processmaster, format: :json)
end
