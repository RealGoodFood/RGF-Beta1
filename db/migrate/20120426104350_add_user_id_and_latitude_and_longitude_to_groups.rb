class AddUserIdAndLatitudeAndLongitudeToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :user_id, :integer

    add_column :groups, :latitude, :float

    add_column :groups, :longitude, :float

    add_column :groups, :address, :text

  end
end
