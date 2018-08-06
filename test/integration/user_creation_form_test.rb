require 'test_helper'

class UserCreationFormTest < ActionDispatch::IntegrationTest
  test "email utilisé" do
    post '/users', params: { user: { email: "n.zhao@hotmail.fr" } }
    assert_not flash, "email utilisé"
  end

  test "vide params" do
    post '/users', params: { user: { first_name: "", last_name: "", email: "   " } }
    assert_not flash.empty?, flash.each { |i, _b|
                               puts i + @user.class
                             }
  end

  test "ça marche" do
    post '/users', params: { user: { first_name: "nico", last_name: "nico", email: " n.zhao333314@gmail.fr  ", password: "woofoo", password_confirmation: "woofoo" } }
    assert_not flash, flash.each { |i, _b|
                        puts i
                      }
  end
end
