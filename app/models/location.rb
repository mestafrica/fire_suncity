class Location < ApplicationRecord
	has_many :accommodations
	validates :region, :town_or_city, presence: true
end
