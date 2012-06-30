class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :event_description
      t.date :event_starting_on
      t.date :event_ending_on
      t.string :food_type
      t.integer :food_for_people
      t.integer :no_of_guests
      t.integer :no_of_guests_attending
      t.integer :user_id
      t.string :address
      t.boolean :gmaps
      t.integer :event_category_id
      t.string  :ev_pot, :default => "N/A"
      t.string  :ev_swap, :default => "N/A"
      t.string  :ev_collaborative, :default => "N/A"
      t.string  :ev_party, :default => "N/A"
      t.integer :location_id
      t.string :event_type
      t.float :latitude
      t.float :longitude
      t.string :slug
      t.string :street
      t.string :zip
      t.string :state
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
