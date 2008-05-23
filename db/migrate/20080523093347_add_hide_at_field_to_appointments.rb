class AddHideAtFieldToAppointments < ActiveRecord::Migration
  def self.up
    add_column :appointments, :hide_at, :datetime
  end

  def self.down
    remove_column :appointments, :hide_at
  end
end
