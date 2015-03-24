json.array!(@trackingsheetdocuments) do |trackingsheetdocument|
  json.extract! trackingsheetdocument, :id, :document, :description
  json.url trackingsheetdocument_url(trackingsheetdocument, format: :json)
end
