class AccommodationType < ApplicationRecord
	has_many :accommodations
	validates :name, presence: true
end
