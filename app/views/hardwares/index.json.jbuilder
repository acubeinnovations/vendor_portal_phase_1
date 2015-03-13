json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :description, :countryoforgin, :mill, :supplier, :supplierpart, :leadtime, :unitqty, :unitprice, :totalprice
  json.url hardware_url(hardware, format: :json)
end
