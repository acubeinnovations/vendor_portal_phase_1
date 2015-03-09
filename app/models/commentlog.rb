class Commentlog
  include Mongoid::Document
	#include Mongoid::Paperclip
	include Mongoid::Timestamps
	#include Mongoid::Delorean::Trackable

  #general tab values
  field :comments,type: String
  field :sessionid, type: String
  field :date, type: String
  field :useremail, type: String
 # field :value, type: String
	
 	
 

	belongs_to :trackingsheet
	

	
end
