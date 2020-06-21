class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :vehicles, through: :reviews

    validates :username, :email, presence: true, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
   
    
    

def self.find_or_create_by_omniauth(auth_hash)
    where(email: auth_hash[:info][:email]).first_or_create do |user|
      user.username = auth_hash[:info][:nickname]
      user.password = SecureRandom.hex
 end
 end
 end

