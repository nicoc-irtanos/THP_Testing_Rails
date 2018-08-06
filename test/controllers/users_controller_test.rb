require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "email utilisé" do
    get '/users/new'
    post '/users', params: {user: {email: "n.zhao@hotmail.fr"}}
      assert_not flash.empty?, "email utilisé"
    end

    test "vide params" do
      get '/users/new'
      post '/users', params:{user: {first_name: "", last_name: "", email: "   "}}
        assert_not flash.empty?, "champs vides"
      end

      test "ça marche" do
        get '/users/new'
        post '/users', params:{user: {first_name: "nico", last_name: "nico", email: " n.zhao333123314@gmail.fr  ", password: "woofoo"}}
        assert flash.empty?, "un truc marche pas dansla création"
        end
  end
