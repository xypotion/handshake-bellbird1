require 'test_helper'

class AlarmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @twenty = "my twenty characters"
  end
  
  test "should allow message of length 100" do
    alarm = Alarm.new(message: @twenty * 5)
    assert alarm.valid?
  end
  
  test "should allow message of length 200" do
    alarm = Alarm.new(message: @twenty * 10)
    assert alarm.valid?
  end
  
  test "should not allow message of length 201" do
    alarm = Alarm.new(message: @twenty * 10 + "1")
    assert !alarm.valid?
  end
  
  test "should not allow blank message" do
    alarm = Alarm.new(message: "")
    assert !alarm.valid?
  end
  
  test "unicode is allowed in message" do
    alarm = Alarm.new(message: "éclair")
    assert alarm.valid?
  end
  
  test "angle brackets are stripped from message" do
    alarm = Alarm.new(message: "<tag>hello</tag>")
    skip
  end
end
