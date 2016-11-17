class Location < ApplicationRecord
	validates :region, :town_or_city, presence: true
end
