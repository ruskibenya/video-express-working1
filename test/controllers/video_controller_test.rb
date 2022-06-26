require "test_helper"

class VideoControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get video_home_url
    assert_response :success
  end

  test "should get party" do
    get video_party_url
    assert_response :success
  end

  test "should get screenshare" do
    get video_screenshare_url
    assert_response :success
  end

  test "should get login" do
    get video_login_url
    assert_response :success
  end

  test "should get chat" do
    get video_chat_url
    assert_response :success
  end
end
