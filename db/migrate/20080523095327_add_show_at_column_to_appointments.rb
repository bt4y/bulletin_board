class AddShowAtColumnToAppointments < ActiveRecord::Migration
  def self.up
    add_column :appointments, :show_at, :datetime
  end

  def self.down
    remove_column :appointments, :show_at
  end
end
