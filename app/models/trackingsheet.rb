class Trackingsheet
  include Mongoid::Document
	include Mongoid::Paperclip
	include Mongoid::Timestamps
	#include Mongoid::Delorean::Trackable

  #general tab values
  field :images, type: String
  field :factory, type: String
  field :subcontractor, type: String
	field :salestrackingsheetedtosamplerequest, type: String
 	
  field :xmilldate, type: String
  field :productionleadtime, type: String
  field :salesproceedtosamplerequest, type: String
  field :protoduebackfromvendor, type: String
  field :daftovendordate, type: String
 	field :rtlmu, type: String
  field :mkup, type: String
  
  
  #field :vendor, type: String #new
  field :brand, type: String #new
  field :customername, type: String #new
  field :customeraccountnumber, type: String #new
  field :projectnumber, type: String #new
  field :customerstylenumber, type: String #new
  field :groupname, type: String #new
  field :productcategory, type: String #new
  field :designname, type: String #new
  field :shape, type: String #new
  field :size, type: String #new
  field :fiber, type: String #new
  field :construction, type: String #new
  field :fabrictype, type: String #new
  field :gauge_end, type: String #new
  field :finish, type: String #new
  field :finishdetails, type: String #new
  field :colors, type: String #new
  field :hw_logo_trim, type: String #new
  field :components, type: String #new
  field :proto_daf_number, type: String #new
  
  
  
  
  #sales enters tab values
  field :projectedunits, type: String
  field :targetfob, type: String
  field :targetmu, type: String
  field :targetws, type: String
  
  
  
  field :targetretailus, type: String #new
  field :targetretailcan, type: String #new
 
  #minimum MOQ tab values
  field :percolor, type: String
  field :perstyle, type: String
  field :incoterms, type: String
  
  
  field :pricebasedonprojection, type: String #new
  field :additionalsurcharge, type: String #new
  
  #first cost per style tab values
  field :moq, type: String
  field :thousandtofivethousandPCS, type: String
  field :fivethousandtotenthousandPCS, type: String
  
  field :tenthousandtotwentythousandPCS, type: String #new
  field :twentythousandplusPCS, type: String #new
  
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
  
  
  field :xmill, type: String #new
  field :received, type: String #new
  field :approved, type: String #new
  
  #2nd DAF/STYLE Sample tab values
  field :daf2soss, type: String
  field :daf2nmbrofdefsmplneeded, type: String
  field :daf2dafissued, type: String
  field :daf2sampleduedate, type: String
  
  
  field :daf2xmill, type: String #new
  field :daf2received, type: String #new
  field :daf2approved, type: String #new
  
  
  
  #VS DS tab values #new
  field :vsdsreceived, type: String #new
  field :vsdsapproved, type: String #new
  

	field :user_id,type: String
	field :vendor,type: String
	field :processmaster_id,type: String	
	field :style_id,type: String
	field :comments,type: String

	belongs_to :user
	belongs_to :processmaster
	belongs_to :style
  
  has_many :trackingsheetlogs, :dependent => :destroy
	has_many :commentlogs, :dependent => :destroy
	has_many :components, :dependent => :destroy
	has_many :hardwares, :dependent => :destroy
	has_many :testings, :dependent => :destroy
	has_many :costsheets, :dependent => :destroy
	#validates_presence_of :comments, :on => :update
	
end
