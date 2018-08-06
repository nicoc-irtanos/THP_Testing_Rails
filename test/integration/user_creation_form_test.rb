require 'test_helper'

class UserCreationFormTest < ActionDispatch::IntegrationTest
  # test "email utilisé" do
  #   get '/users/new'
  #   post '/users', params: { user: { email: "n.zhao@hotmail.fr" } }
  #   assert flash[:danger], "email utilisé"
  # end

  # test "vide params" do
  #   get '/users/new'
  #   post '/users', params: { user: { first_name: "", last_name: "", email: "   " } }
  #   assert flash[:danger], "champs vides"
  # end

  # test "ça marche" do
  #   get '/users/new'
  #   post '/users', params: { user: { first_name: "nico", last_name: "nico", email: " n.z33123314@gmail.fr  ", password: "woofoo" } }
  #   assert flash[:success], "un truc marche pas dansla création"
  # end
end
