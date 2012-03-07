class CreateMemberAttendingEventRegisters < ActiveRecord::Migration
  def change
    create_table :member_attending_event_registers do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :owner_id
      t.string :state

      t.timestamps
    end
  end
end
