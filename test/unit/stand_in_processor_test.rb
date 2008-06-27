require '../test_helper'
require "pp"

class StandInProcessorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_splits_text
    s = StandInProcessor.new(File.read(File.dirname(__FILE__) + "/../fixtures/Vertretungsplan_1.txt"))
    pp s.text
  end
end
