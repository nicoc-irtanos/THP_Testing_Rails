require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "Accueil standard" do
    get root_url
    assert_select("a[href='/login']")
    assert_select("a[href='/users/new']")
  end

  test "club page logged" do
    get club_path
    assert_redirected_to login_path
  end
end
