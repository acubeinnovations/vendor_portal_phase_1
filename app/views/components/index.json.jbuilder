json.array!(@components) do |component|
  json.extract! component, :id, :fiber, :countryoforgin, :customer, :mill, :code, :hangtag2, :hangtag3, :mainlabel, :carecontentlabel, :upcsticker, :glovehanger, :hatjhook, :sizelabel
  json.url component_url(component, format: :json)
end
