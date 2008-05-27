class UseDatesInsteadOfDateTimes < ActiveRecord::Migration
  def self.up
    add_column :appointments, :show_on, :date
    add_column :appointments, :hide_on, :date
    remove_column :appointments, :show_at
    remove_column :appointments, :hide_at
  end

  def self.down
    add_column :appointments, :show_at, :datetime
    add_column :appointments, :hide_at, :datetime
    remove_column :appointments, :show_on
    remove_column :appointments, :hide_on
  end
end
