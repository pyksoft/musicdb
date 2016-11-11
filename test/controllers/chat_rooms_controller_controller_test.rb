require 'test_helper'

class ChatRoomsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chat_rooms_controller_index_url
    assert_response :success
  end

end
