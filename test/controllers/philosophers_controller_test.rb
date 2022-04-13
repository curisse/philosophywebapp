require 'test_helper'

class PhilosophersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get philosophers_index_url
    assert_response :success
  end

  test "should get show" do
    get philosophers_show_url
    assert_response :success
  end

  test "should get new" do
    get philosophers_new_url
    assert_response :success
  end

  test "should get edit" do
    get philosophers_edit_url
    assert_response :success
  end

end
