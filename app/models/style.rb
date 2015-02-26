class Style
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps::Created
  field :stylename, type: String
  field :stylecode, type: String
  
  field :division, type: String
  field :brand, type: String
  field :market, type: String
  field :season, type: String
  field :vendor, type: String

  belongs_to :division
	has_and_belongs_to_many :users 
	accepts_nested_attributes_for :users, allow_destroy: true#, reject_if: :all_blank
  has_and_belongs_to_many :processmasters 
	has_many :trackingsheets
  
  has_mongoid_attached_file :image,
      :url => "/system/attachments/:id/:style/:basename.:extension", 
           :keep_old_files => true , 
          :keep_old_files => :version_condition_met?,
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
