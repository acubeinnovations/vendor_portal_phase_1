json.array!(@testings) do |testing|
  json.extract! testing, :id, :requiredtests, :name, :customer, :description, :supplier, :supplierrefferenceno, :leadtime, :testdate, :results, :retestdate, :cost, :trackingsheet
  json.url testing_url(testing, format: :json)
end
