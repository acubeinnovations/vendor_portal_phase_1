class Proce
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  field :division, type: String
  field :brand, type: String
  field :season, type: String
  field :year, type: String
  field :market, type: String
  field :customername, type: String
  field :customeraccount, type: String
  field :project, type: String
  field :referncestyle, type: String
end
