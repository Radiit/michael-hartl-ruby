require "test_helper"

class MicropostsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get microposts_controller_url
    assert_response :success
  end

  test "should get create" do
    get microposts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get microposts_destroy_url
    assert_response :success
  end

  test "should get micropost_params" do
    get microposts_micropost_params_url
    assert_response :success
  end

  test "should get correct_user" do
    get microposts_correct_user_url
    assert_response :success
  end
end
