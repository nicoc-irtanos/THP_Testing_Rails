require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "email utilisé" do
    get '/users/new'
    post '/users', params: { user: { email: "n.zhao@hotmail.fr" } }
    assert_not_nil flash[:danger], "test email utilisé failed"
  end

  test "vide params" do
    get '/users/new'
    post '/users', params: { user: { first_name: "", last_name: "", email: "   " } }
    assert_not_nil flash[:danger], "test champs vides failed"
  end

  test "ça marche" do
    get '/users/new'
    post '/users', params: { user: { first_name: "nico", last_name: "nico", email: " n.z33123314@gmail.fr  ", password: "woofoo" } }
    assert_not_nil flash[:success], "un truc marche pas dans la création de l'utilisateur"
  end
end
