class Testing
  include Mongoid::Document
	include Mongoid::Timestamps

  field :requiredtests, type: String
  field :name, type: String
  field :customer, type: String
  field :description, type: String
  field :supplier, type: String
  field :supplierrefferenceno, type: String
  field :leadtime, type: String
  field :testdate, type: String
  field :results, type: String
  field :retestdate, type: String
  field :reresults, type: String
  field :cost, type: String
  field :trackingsheet, type: String

	belongs_to :trackingsheet
end
