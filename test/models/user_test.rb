require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "jacob1", email: "jacob@gmail.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = "   "
    assert_not @user.valid?
  end

  test "username should not be less than 4 characters" do
    @user.username = "a" * 3
    assert_not @user.valid?
  end

  test "username should not be more than 12 characters" do
    @user.username = "a" * 13
    assert_not @user.valid?
  end

  test "username should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
end
