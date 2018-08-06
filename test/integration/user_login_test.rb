require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:jean)
  end



    test "Accueil loggé" do
      get login_path
      post login_path, params: { session: { user_id: @user.id, email: @user.email, password: 'irtanos' } }
      follow_redirect!
      get root_url
        assert_select("a[href=?]", logout_path)
        assert_select("a[href='/club']")
        assert_select("a[href=?]", user_path(@user))
    end
end
