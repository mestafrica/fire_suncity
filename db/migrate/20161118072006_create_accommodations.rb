class CreateAccommodations < ActiveRecord::Migration[5.0]
  def change
    create_table :accommodations do |t|
      t.references :landlord, foreign_key: true
      t.references :accommodation_type, foreign_key: true
      t.references :location, foreign_key: true
      t.string :picture
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
