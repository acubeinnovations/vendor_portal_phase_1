class Trackingsheetimage
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps

  field :description, type: String
	field :trackingsheet, type: String

	belongs_to :trackingsheet
	belongs_to :user

	 has_mongoid_attached_file :image,
      :url => "/system/attachments/:id/:style/:basename.:extension", 
          
      :path => ":rails_root/public/system/attachments/:id/:style/:basename.:extension", 
      :styles => {
        :original => ['1920x1680>', :jpg],
        :small    => ['100x100>',   :jpg],
        :medium   => ['250x250',    :jpg],
        :large    => ['500x500>',   :jpg]
      },
      :convert_options => { :all => '-background white -flatten +matte' }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
