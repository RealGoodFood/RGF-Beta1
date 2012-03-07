class ProfilesValues < ActiveRecord::Migration

  def self.up
      create_table :profiles_values, :id => false do |t|
       	t.references :profile
	t.references :value
      end
  end

  def self.down
	drop_table :profiles_values
  end

end
