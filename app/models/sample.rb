class Sample
  include Mongoid::Document
	include Mongoid::Timestamps

  field :soss, type: String
  field :nmbrofdefsmplneeded, type: String
  field :dafissued, type: String
  field :sampleduedate, type: String
  field :xmill, type: String
  field :received, type: String
  field :approved, type: String
	field :trackingsheet, type: String

	belongs_to :trackingsheet

end
