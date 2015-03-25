class Season
  include Mongoid::Document
	include Mongoid::Timestamps

  field :name, type: String
	has_many :styles
	has_many :processmasters

end
