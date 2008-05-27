class Appointment < ActiveRecord::Base
  named_scope :recent, lambda {
    { :conditions => [ "show_at < :now AND hide_at > :now", { :now => Time.now } ],
      :order      => "hide_at DESC" }
  }
  
  validates_presence_of :title, :body, :hide_at, :show_at
end
