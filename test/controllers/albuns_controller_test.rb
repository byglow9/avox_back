require "test_helper"

class AlbunsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get albuns_index_url
    assert_response :success
  end

  test "should get show" do
    get albuns_show_url
    assert_response :success
  end

  test "should get new" do
    get albuns_new_url
    assert_response :success
  end

  test "should get create" do
    get albuns_create_url
    assert_response :success
  end

  test "should get edit" do
    get albuns_edit_url
    assert_response :success
  end

  test "should get update" do
    get albuns_update_url
    assert_response :success
  end

  test "should get destroy" do
    get albuns_destroy_url
    assert_response :success
  end
end
