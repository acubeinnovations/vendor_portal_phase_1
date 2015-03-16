json.array!(@costsheets) do |costsheet|
  json.extract! costsheet, :id, :screencount, :firstcost, :duty, :freight, :insurance, :commision, :misc, :designcharges, :croquisnonduty, :screens, :soffs, :testing, :qa, :componentsLstring, :ldp, :retail, :comments
  json.url costsheet_url(costsheet, format: :json)
end
