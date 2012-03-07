class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.string :country
      t.float :latitude
      t.float :longitude
      t.integer :profile_id
      t.boolean :gmaps

      t.timestamps
    end
  end
end
