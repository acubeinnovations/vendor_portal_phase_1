class Trackingsheetlog
  include Mongoid::Document
	#include Mongoid::Paperclip
	include Mongoid::Timestamps
	#include Mongoid::Delorean::Trackable

  #general tab values
  field :sessionid, type: String
  field :date, type: String
  field :useremail, type: String
  field :tabname, type: String
	
 	
 

	belongs_to :trackingsheet
	

	
end
