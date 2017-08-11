require 'test_helper'

class AlarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alarm = alarms(:one)
  end
  
  test "dings when there is one alarm" do
    skip
  end
  
  test "dings when there are multiple alarms" do
    skip
  end
  
  test "doesn't ding when there are no alarms" do
    skip
  end
  
  test "user can upvote alarm" do
    post upvote_alarm_url, params: {alarm: @alarm} 
    # skip
  end
  
  test "alarm shows default upvote count" do
    skip
  end
  
  test "alarm shows upvote count = 1 after upvote" do
    skip
  end
  
  #auto-generated tests below

  test "should get index" do
    get alarms_url
    assert_response :success
  end

  test "should get new" do
    get new_alarm_url
    assert_response :success
  end

  test "should create alarm" do
    assert_difference('Alarm.count') do
      post alarms_url, params: { alarm: { message: @alarm.message } }
    end

    assert_redirected_to alarm_url(Alarm.last)
  end

  test "should show alarm" do
    get alarm_url(@alarm)
    assert_response :success
  end

  test "should get edit" do
    get edit_alarm_url(@alarm)
    assert_response :success
  end

  test "should update alarm" do
    patch alarm_url(@alarm), params: { alarm: { message: @alarm.message } }
    assert_redirected_to alarm_url(@alarm)
  end

  test "should destroy alarm" do
    assert_difference('Alarm.count', -1) do
      delete alarm_url(@alarm)
    end

    assert_redirected_to alarms_url
  end
end
