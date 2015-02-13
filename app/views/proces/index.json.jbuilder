json.array!(@proces) do |proce|
  json.extract! proce, :id, :division, :brand, :season, :year, :market, :customername, :customeraccount, :project, :referncestyle
  json.url proce_url(proce, format: :json)
end
