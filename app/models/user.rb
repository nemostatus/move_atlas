class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :vehicles, through: :reviews

    validates :username, :email, presence: true, uniqueness: true
    
    

   
 
    
  def self.find_or_create_by_omniauth(auth_hash)
    where(username: auth_hash[:info][:email]).first_or_create do |user|
      user.username = auth_hash[:info][:name]
      user.password = SecureRandom.hex
    end
  end
    end

