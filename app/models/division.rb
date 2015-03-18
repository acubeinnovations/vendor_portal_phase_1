class Division
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  has_one :user, validate: false 
  has_many :styles
	has_many :processmasters
end
