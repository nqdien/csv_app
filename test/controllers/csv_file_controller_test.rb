require 'test_helper'

class CsvFileControllerTest < ActionController::TestCase
  test "should get download" do
    get :download
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
