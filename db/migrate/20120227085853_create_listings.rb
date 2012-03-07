class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :food_category_id
      t.text :description
      t.string :location_address
      t.float :latitude
      t.float :longitude
      t.date :start_date
      t.date :end_date
      t.integer :user_id
      t.integer :eat_by_date_id
      t.string :slug
      t.string :street
      t.string :pincode
      t.string :city
      t.string :state
      t.string :country
      t.string :slug
      t.timestamps
    end
  end
end
