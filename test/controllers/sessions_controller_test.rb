require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "bon login" do
    post login_path params: {user: {email: "n.zhao@hotmail.fr", password: "loliloli"}}
    
    assert true
  end

end
