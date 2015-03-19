json.array!(@trackingsheetimages) do |trackingsheetimage|
  json.extract! trackingsheetimage, :id, :image, :description
  json.url trackingsheetimage_url(trackingsheetimage, format: :json)
end
