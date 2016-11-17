class Tenant < ApplicationRecord
	validates :firstname, :lastname, :phone, :email, presence: true
end
