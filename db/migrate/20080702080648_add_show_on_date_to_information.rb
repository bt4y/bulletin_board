class AddShowOnDateToInformation < ActiveRecord::Migration
  def self.up
    add_column :information, :show_on, :date
  end

  def self.down
    remove_column :information, :show_on, :date
  end
end
