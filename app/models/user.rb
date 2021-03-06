class User
  include Mongoid::Document
	include Mongoid::Timestamps::Created
  
    validates_presence_of :firstname
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
 
  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""
	field :firstname,          type: String, default: ""
  field :lastname, 					 type: String, default: ""
	field :userrole, 			 type: String, default: ""
  
  
  
  
  
 # field :division, 			 type: String, default: ""
 # field :_id, 			 type: String,  default:->{ email.to_s.parameterize}

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String
	
	has_and_belongs_to_many :styles
	#has_and_belongs_to_many :processmasters
 belongs_to :division

	#referenced_in:uesertype
  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time
	#has_many :products
	
	def self.serialize_from_session(key, salt)
    record = to_adapter.get(key[0]["$oid"])
    record if record && record.authenticatable_salt == salt
  end

	def name
  "#{self.lastname} #{self.firstname}"
	end
	
	

	def self.search(search)
		if !search.blank?
		  
			any_of({firstname: /#{search}/i },{userrole: /#{search}/i })
		else
		  all()
		end
	end

	

end
