class AddPhotoToListings < ActiveRecord::Migration
  def change
    add_column :listings, :photo_file_name, :string

    add_column :listings, :photo_content_type, :string

    add_column :listings, :photo_file_size, :integer

  end
end
