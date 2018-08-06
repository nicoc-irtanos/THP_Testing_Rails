require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "prénom vide" do
    util = User.new
    util.last_name = ""
    util.first_name = "woof"
    assert_not util.save, "il ne faut pas l'enregister"
  end
  test "prénom d'espaces" do
    util = User.new
    util.last_name = "         "
    util.first_name = "woof"
    assert_not util.save, "il ne wooof lel ke  opeeiii"
  end
end
