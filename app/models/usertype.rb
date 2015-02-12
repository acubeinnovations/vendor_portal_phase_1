class Usertype
  include Mongoid::Document
  field :userrole, type: String
  field :description, type: String
  field :_id, type: String, default:->{ userrole.to_s.parameterize}
  #has_many :users
end
