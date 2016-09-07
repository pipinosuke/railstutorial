require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test setup do
    @user=User.new(name:"ベジータ",email:"ベジータ@gmail.com")
  end

  test "valid?" do
    assert @user.valid?
  end

  test "User present?" do
    @user.name=""
    assert_not @user.valid?

  end

  test "email present?" do
    @user.email=""
    assert_not @user.valid?

  end




end
