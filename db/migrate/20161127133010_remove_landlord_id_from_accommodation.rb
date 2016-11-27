class RemoveLandlordIdFromAccommodation < ActiveRecord::Migration[5.0]
  def change
    remove_column :accommodations, :landlord_id, :integer
  end
end
