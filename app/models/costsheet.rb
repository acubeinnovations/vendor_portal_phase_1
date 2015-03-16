class Costsheet
  include Mongoid::Document
	include Mongoid::Timestamps

  field :screencount, type: String
  field :firstcost, type: String
  field :duty, type: String
  field :freight, type: String
  field :insurance, type: String
  field :commision, type: String
  field :misc, type: String
  field :designcharges, type: String
  field :croquisnonduty, type: String
  field :screens, type: String
  field :soffs, type: String
  field :testing, type: String
  field :qa, type: String
  field :componentsstring, type: String
  field :ldp, type: String
  field :retail, type: String
  field :comments, type: String
	field :trackingsheet, type: String

	belongs_to :trackingsheet
end
