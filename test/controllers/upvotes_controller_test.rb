require 'test_helper'

class UpvotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alarm = alarms(:one)
    @upvote = upvotes(:one) #added
  end
  
  #auto-generated tests below

  test "should get index" do
    get upvotes_url
    assert_response :success
  end

  test "should get new" do
    get new_upvote_url
    assert_response :success
  end

  test "should create upvote" do
    assert_difference('Upvote.count') do
      post alarms_url, params: { alarm: { message: @alarm.message } } #added
      post upvotes_url, params: { upvote: { alarm_id: @upvote.alarm_id } }
    end

    assert_redirected_to upvote_url(Upvote.last)
  end

  test "should show upvote" do
    get upvote_url(@upvote)
    assert_response :success
  end

  test "should get edit" do
    get edit_upvote_url(@upvote)
    assert_response :success
  end

  test "should update upvote" do
    patch upvote_url(@upvote), params: { upvote: { alarm_id: @upvote.alarm_id } }
    assert_redirected_to upvote_url(@upvote)
  end

  test "should destroy upvote" do
    assert_difference('Upvote.count', -1) do
      delete upvote_url(@upvote)
    end

    assert_redirected_to upvotes_url
  end
end
