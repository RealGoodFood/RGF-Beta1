class CreateFoodRestrictions < ActiveRecord::Migration
  def change
    create_table :food_restrictions do |t|
      t.string :name

      t.timestamps
    end
  end
end
