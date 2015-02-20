class Processmaster
  include Mongoid::Document
	include Mongoid::Timestamps::Created
	include Mongoid::Paperclip

  field :division, type: String
	field :brand, type: String
  field :season, type: String
  field :year, type: String
  field :market, type: String
	field :customername, type: String
  field :customeraccount, type: String
  field :project, type: String
	field :referencestyle, type: String
	field :stylename, type: String
  field :stylecode, type: String
	field :user_ids ,type: Array

	has_and_belongs_to_many :users 
	accepts_nested_attributes_for :users, allow_destroy: true#, reject_if: :all_blank
  belongs_to :style 
  has_one :trackingsheet 

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
	#validates :project, :presence => true

	
	after_create :create_trackingsheet
end