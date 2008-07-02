class Appointment < ActiveRecord::Base
  named_scope :recent, lambda {
    { :conditions => [ "show_on < :now AND hide_on > :now", { :now => Time.now } ],
      :order      => "hide_on ASC" }
  }
  
  validates_presence_of :title, :body, :hide_on, :show_on
end
