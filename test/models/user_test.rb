require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "prénom vide" do
    util = User.new
    util.last_name = ""
    util.first_name = "woof"
    assert_not util.save, "il ne faut pas l'enregister un prénom vide"
  end
  test "prénom d'espaces" do
    util = User.new
    util.last_name = "         "
    util.first_name = "woof"
    assert_not util.save, "il ne wooof lel ke  opeeiii"
  end
  test "double email" do
    util = User.new
    util.email = "example@example.com"
    util.save
    two = User.new
    two.email = "example@example.com"
    assert_not two.save, "don't save please email occupied"
  end
    
end
