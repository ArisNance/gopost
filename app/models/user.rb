class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # commented out code below. ActiveRecord was giving unpermitted parameter
  # validates_presence_of :time_zone
  has_many :connections, dependent: :destroy 
  
  def self.sign_in_from_omniauth(auth)
		find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)
  end
  
  def facebook
    self.connections.where(provider: "facebook
    ").first
  end
  
end
