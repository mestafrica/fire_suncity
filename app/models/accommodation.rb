class Accommodation < ApplicationRecord
  belongs_to :landlord
  belongs_to :accommodation_type
  belongs_to :location
  mount_uploader :picture, PictureUploader
  validates :landlord, :accommodation_type, :location, :picture, :description, :price, presence: true


  include PgSearch
  multisearchable :against => [:description, :price]

  pg_search_scope :search_by_description, :against => [:description, :price]

end

