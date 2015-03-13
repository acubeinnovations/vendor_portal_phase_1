class Component
  include Mongoid::Document
  field :fiber, type: String
  field :countryoforgin, type: String
  field :customer, type: String
  field :mill, type: String
  field :code, type: String
  field :hangtag2, type: String
  field :hangtag3, type: String
  field :mainlabel, type: String
  field :carecontentlabel, type: String
  field :upcsticker, type: String
  field :glovehanger, type: String
  field :hatjhook, type: String
  field :sizelabel, type: String

	field :trackingsheet, type: String
	belongs_to :trackingsheet
end
