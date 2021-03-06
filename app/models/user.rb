class User < ActiveRecord::Base
	attr_accessible :email, :name, :password, :password_confirmation
	before_save { self.name = name.downcase }
	before_save { self.email = email.downcase }
	has_secure_password
	before_save :create_remember_token


	validates :name, presence:true, length:{ maximum:50 }, uniqueness: { case_sensitive:false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:true, format:{ with:VALID_EMAIL_REGEX }, uniqueness: { case_sensitive:false }
	validates :password, presence:true, length:{ minimum:6 }
	validates :password, presence:true

	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
