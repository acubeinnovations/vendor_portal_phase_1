class Trackingsheetdocument
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :description, type: String
	field :trackingsheet, type: String
	field :procesmaster, type: String

	belongs_to :trackingsheet
	belongs_to :processmaster
	belongs_to :user

	has_mongoid_attached_file :document,
      :url => "/system/attachments/:id/:basename.:extension", 
          
      :path => ":rails_root/public/system/attachments/:id/:basename.:extension"

  validates_attachment_content_type :document, :content_type => [ 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]
end
