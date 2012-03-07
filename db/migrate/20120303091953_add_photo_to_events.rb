class AddPhotoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :photo_file_name, :string

    add_column :events, :photo_content_type, :string

    add_column :events, :photo_file_size, :integer

  end
end
