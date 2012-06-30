class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :group_post
      t.integer :user_id

      t.timestamps
    end
  end
end
