class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :contact_number
      t.date :date_of_birth
      t.integer :user_id
      t.string :slug
      t.string :faceboo_profile_link
      t.string :twitter_profile_link
      t.string :google_plus_link
      t.string :linked_in_profile_link
      t.text :about_me

      t.timestamps
    end
  end
end
