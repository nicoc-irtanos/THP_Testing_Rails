require 'test_helper'
include SessionsHelper
class SessionsControllerTest < ActionDispatch::IntegrationTest
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
end
