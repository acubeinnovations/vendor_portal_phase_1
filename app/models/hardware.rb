class Hardware
  include Mongoid::Document
  include Mongoid::Paperclip
	include Mongoid::Timestamps

  field :description, type: String
  field :hardwareimage, type: String
  field :countryoforgin, type: String
  field :mill, type: String
  field :supplier, type: String
  field :supplierpart, type: String
  field :leadtime, type: String
  field :unitqty, type: String
  field :unitprice, type: String
  field :totalprice, type: String
	field :trackingsheet, type: String
	
	belongs_to :trackingsheet
  
  
 has_mongoid_attached_file :hardwareimage,
     :url => "/system/attachments/:id/:basename.:extension", 
     :path => ":rails_root/public/system/attachments/:id/:basename.:extension", 
     :styles => {
       :original => ['1920x1680>', :jpg],
       :small    => ['100x100>',   :jpg],
       :medium   => ['250x250',    :jpg],
       :large    => ['500x500>',   :jpg]
     },
     :convert_options => { :all => '-background white -flatten +matte' }
 validates_attachment_content_type :hardwareimage, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 
 
end
