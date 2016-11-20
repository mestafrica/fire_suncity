class Accommodation < ApplicationRecord
  belongs_to :landlord
  belongs_to :accommodation_type
  belongs_to :location
  mount_uploader :picture, PictureUploader
  validates :landlord, :accommodation_type, :location, :picture, :description, :price, presence: true
end
