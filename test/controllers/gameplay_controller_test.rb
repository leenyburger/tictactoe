require 'test_helper'

class GameplayControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get gameplay_play_url
    assert_response :success
  end

end
