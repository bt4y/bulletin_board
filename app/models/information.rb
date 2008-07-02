class Information < ActiveRecord::Base
  named_scope :teacher, :conditions => { :teachers_only => true }
  named_scope :general, :conditions => { :teachers_only => false }
  named_scope :recent,  lambda { {
      :conditions => [ "show_on < :now AND hide_on > :now", :now => Time.now],
      :order      => "hide_on ASC" } }
end
