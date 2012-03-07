class CreateEatByDates < ActiveRecord::Migration
  def change
    create_table :eat_by_dates do |t|
      t.string :name

      t.timestamps
    end
  end
end
