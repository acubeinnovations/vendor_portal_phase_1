json.array!(@submarkets) do |submarket|
  json.extract! submarket, :id, :name
  json.url submarket_url(submarket, format: :json)
end
