class Usertype
  include Mongoid::Document
	include Mongoid::Timestamps::Created
  field :userrole, type: String
  field :description, type: String
  field :_id, type: String, default:->{ userrole.to_s.parameterize},overwrite: true
  #has_many :users
end
