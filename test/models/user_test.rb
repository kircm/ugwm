require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup

  end

  test "name should not be empty" do
    @user = User.new(name: "", email: "email")
    assert_not @user.valid?
  end

  test "email should not be empty" do
    @user = User.new(name: "name", email: "")
    assert_not @user.valid?
  end
end
