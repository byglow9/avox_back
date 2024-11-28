require "test_helper"

class ArtistasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artistas_index_url
    assert_response :success
  end

  test "should get show" do
    get artistas_show_url
    assert_response :success
  end

  test "should get new" do
    get artistas_new_url
    assert_response :success
  end

  test "should get create" do
    get artistas_create_url
    assert_response :success
  end

  test "should get edit" do
    get artistas_edit_url
    assert_response :success
  end

  test "should get update" do
    get artistas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get artistas_destroy_url
    assert_response :success
  end
end
