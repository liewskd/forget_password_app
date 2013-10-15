class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false }
    validates :NRIC, presence: true
    validates_length_of :NRIC, :minimum => 9, :maximum => 9, :allow_blank => false

    
    
    has_secure_password
    
    validates :password, length: {minimum: 8 }
end
