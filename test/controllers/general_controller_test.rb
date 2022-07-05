require "test_helper"

class GeneralControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get general_index_url
    assert_response :success
    assert_select 'nav a', minimum: 4
    assert_select 'main ul li', 3
    assert_select 'h2', 'Dave Chmura'
  end
end
