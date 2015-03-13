class Hardware
  include Mongoid::Document
	include Mongoid::Timestamps

  field :description, type: String
  field :countryoforgin, type: String
  field :mill, type: String
  field :supplier, type: String
  field :supplierpart, type: String
  field :leadtime, type: String
  field :unitqty, type: String
  field :unitprice, type: String
  field :totalprice, type: String
	field :trackingsheet, type: String
	
	belongs_to :trackingsheet
end
