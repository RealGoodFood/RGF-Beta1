class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.integer :user_id

      t.timestamps
    end
  end
end
