json.array!(@trackingsheets) do |trackingsheet|
  json.extract! trackingsheet, :id, :images
  json.url trackingsheet_url(trackingsheet, format: :json)
end
