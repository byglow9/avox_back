require "test_helper"

class FavoritosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favoritos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favoritos_destroy_url
    assert_response :success
  end
end
