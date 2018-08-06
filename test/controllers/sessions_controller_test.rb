require 'test_helper'
class SessionsControllerTest < ActionDispatch::IntegrationTest
  include SessionsHelper
  test "bon login" do
    post login_path params: {session: {email: "n.zhao@hotmail.fr", password: "loliloli"}}
    assert logged_in?, "impossible de se connecter"
  end
  test "mauvais login" do
    post login_path params: {session: {email: "n.zhao@aldaepale.faiursr", password: "larsteiraoliloli"}}
    assert_not logged_in?, "un utilisateur non existant a réussi à se logger"
  end
  test "navbar logged" do
  
  get login_path
  # usr = User.order("RANDOM()").first
  usr = User.find_by(email: "n.zhao@hotmail.fr")
  puts usr
  puts usr.class
  post login_path, params:{session: {id: usr.id, email: usr.email, password: "loliloli"}}
  follow_redirect!
  get root_url
  assert_select '<a class="nav-link" href="/club">Club</a>', 'Club'
  end

  test "navbar unlogged" do
    get "/"
    assert_select("a[href='/login']")
    assert_select("a[href='/users/new']")
  end
end
