class Information < ActiveRecord::Base
  named_scope :teacher, :conditions => { :teachers_only => true }
  named_scope :general, :conditions => { :teachers_only => false }
  named_scope :recent,  lambda { {
      :conditions => [ "show_on <= :today AND hide_on >= :today", { :today => Date.today }],
      :order      => "hide_on ASC" } }

  validates_presence_of :body, :title, :show_on, :hide_on
end
