class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :first_name, :last_name, :phone_number,
						presence: true,
						length: { maximum: 255 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email,	presence: true,
						length: { maximum: 255 },
						format: { with: VALID_EMAIL_REGEX },
						uniqueness: { case_sensitive: false }

	has_secure_password
	validates :password,	presence: true,
							length: { minimum: 8 }

	def full_name
		"#{first_name} #{last_name}"
	end

end
