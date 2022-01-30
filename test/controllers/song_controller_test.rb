require 'test_helper'

class SongControllerTest < ActionDispatch::IntegrationTest
  test "should get information" do
    get song_information_url
    assert_response :success
  end

end
