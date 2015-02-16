class Proce
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  
  #fixed values in all process
 
  field :division, type: String
  field :brand, type: String
  field :season, type: String
  field :year, type: String
  field :market, type: String
  
  #general tab values
  field :images, type: String
  field :factory, type: String
  field :subcontractor, type: String
  field :customername, type: String
  field :customeraccount, type: String
  field :project, type: String
  #
  #field :_id, type: String,  default:->{ project.to_s.parameterize}
  #
  field :referncestyle, type: String
  field :xmilldate, type: String
  field :productionleadtime, type: String
  field :salesproceedtosamplerequest, type: String
  field :protoduebackfromvendor, type: String
  field :daftovendordate, type: String
  field :comments, type: String
  field :rtlmu, type: String
  field :mkup, type: String
  
  #sales enters tab values
  field :projectedunits, type: String
  field :targetfob, type: String
  field :targetmu, type: String
  field :targetws, type: String
 
  #minimum MOQ tab values
  field :percolor, type: String
  field :perstyle, type: String
  field :incoterms, type: String
  
  #first cost per style tab values
  field :moq, type: String
  field :thousandtofivethousandPCS, type: String
  field :fivethousandtotenthousandPCS, type: String
  
  #LDP tab values
  field :ldpboat, type: String
  field :ldpair, type: String
  
  #customer delivery tab values
  field :startshipdate, type: String
  field :orderduedateviaboat, type: String
  field :orderduedateviaair, type: String
  
  #1st DAF/STYLE Sample tab values
  field :soss, type: String
  field :nmbrofdefsmplneeded, type: String
  field :dafissued, type: String
  field :sampleduedate, type: String
  
  #2nd DAF/STYLE Sample tab values
  field :daf2soss, type: String
  field :daf2nmbrofdefsmplneeded, type: String
  field :daf2dafissued, type: String
  field :daf2sampleduedate, type: String
  
end
