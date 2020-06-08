require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test 'should get index:show' do
    get users_index: show_url
    assert_response :success
  end

end
