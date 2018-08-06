require 'test_helper'
include SessionsHelper
class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "bon login" do
    post login_path params: {session: {email: "n.zhao@hotmail.fr", password: "loliloli"}}
    assert logged_in?, "impossible de se connecter"
  end
  test "mauvais login" do
    post login_path params: {session: {email: "n.zhao@aldaepale.faiursr", password: "larsteiraoliloli"}}
    assert_not logged_in?, "un utilisateur non existant a réussi à se logger"
  end
end
