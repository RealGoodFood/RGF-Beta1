class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :meta
      t.text :body

      t.timestamps
    end
  end
end
