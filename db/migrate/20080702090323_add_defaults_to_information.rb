class AddDefaultsToInformation < ActiveRecord::Migration
  def self.up
    change_column :information, :teachers_only, :boolean, :default => false
  end

  def self.down
    change_column :information, :teachers_only, :boolean, :default => nil
  end
end
