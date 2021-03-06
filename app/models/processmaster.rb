class Processmaster
  include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

  field :division, type: String
	field :brand_id, type: String
  field :season_id, type: String
	field :contact, type: String
	field :submarket_id, type: String
  #field :year, type: String
  field :market_id, type: String
	#field :customername, type: String
  #field :customeraccount, type: String
  #field :project, type: String
	field :name, type: String
	field :style_ids, type: String
	#field :stylename, type: String
  #field :stylecode, type: String
	#field :user_ids ,type: Array

	
	#has_and_belongs_to_many :users 
	#accepts_nested_attributes_for :users, allow_destroy: true#, reject_if: :all_blank
 	has_and_belongs_to_many :styles 
	has_many :trackingsheets, :dependent => :destroy
	accepts_nested_attributes_for :styles,:trackingsheets,allow_destroy: true#, reject_if: :all_blank
  belongs_to :division
	belongs_to :brand
	belongs_to :season
  belongs_to :market
	belongs_to :submarket

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
	
	def self.search(search)
		if !search.blank?

		   any_of({season: /#{search}/i })
       
		else
		  all()
		end
	end
	def self.searchforvendor(search)
		if !search.blank?
		 
          where(division_id: search)
       
		else
		  all()
		end
	end
	
	#after_create :create_trackingsheet
end
