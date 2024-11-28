require "test_helper"

class PlaylistMusicasControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get playlist_musicas_create_url
    assert_response :success
  end

  test "should get destroy" do
    get playlist_musicas_destroy_url
    assert_response :success
  end
end
