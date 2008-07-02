class CreateInformation < ActiveRecord::Migration
  def self.up
    drop_table :appointments
    
    create_table :information do |t|
      t.string :title
      t.text :body
      t.date :hide_on
      t.boolean :teachers_only
      t.timestamps
    end
  end

  def self.down
    create_table "appointments" do |t|
      t.string   "title"
      t.text     "body"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.date     "show_on"
      t.date     "hide_on"
    end
    
    drop_table :information
  end
end
