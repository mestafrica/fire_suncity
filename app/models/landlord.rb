class Landlord < ApplicationRecord
	has_many :accommodations
	validates :firstname, :lastname, :phone, :email, presence: true
end
