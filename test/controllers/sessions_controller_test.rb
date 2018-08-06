require 'test_helper'
class SessionsControllerTest < ActionDispatch::IntegrationTest
  include SessionsHelper
  def setup
    @user = users(:nico)
  end

  test "bon login" do
    get login_path
    post login_path params: { session: { user_id: @user.id, email: @user.email, password: "loliloli" } }
    assert logged_in?
  end

  test "mauvais login" do
    post login_path params: {session: {email: "n.zhao@aldaepale.faiursr", password: "larsteiraoliloli"}}
    assert_not logged_in?, "un utilisateur non existant a réussi à se logger"
  end
  test "navbar logged" do
  get login_path
  # usr = User.order("RANDOM()").first
  usr = User.find_by(email: "n.zhao@hotmail.fr")
  post login_path, params:{session: {id: usr.id, email: usr.email, password: "loliloli"}}
  follow_redirect!
  get root_url
  assert_select 'a[href="/club"]'
  assert_select 'a[href=?]', user_path(usr)
  end

  test "navbar unlogged" do
    get "/"
    assert_select("a[href='/login']")
    assert_select("a[href='/users/new']")
  end
end
