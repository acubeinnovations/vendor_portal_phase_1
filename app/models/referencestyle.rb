class Referencestyle
  include Mongoid::Document	
	include Mongoid::Timestamps

  field :name, type: String

	belongs_to :styles
	belongs_to :processmasters
end
