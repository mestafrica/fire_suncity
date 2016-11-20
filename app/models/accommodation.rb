class Accommodation < ApplicationRecord
  belongs_to :landlord
  # belongs_to :accommodation_type
  belongs_to :location
  mount_uploader :picture, PictureUploader
  validates :landlord, :location, :picture, :description, :price, presence: true
end

