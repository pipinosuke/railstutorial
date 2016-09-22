require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # ??????????????
    @micropost = @user.microposts.build(content: "アイウエオ")

  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end

  test "content shold be present" do
    @micropost.content =""
    assert_not @micropost.valid?
  end

  test "content sholud be 140" do
    @micropost.content ="a"*141
    assert_not @micropost.valid?
  end

  test "order should latest" do
    assert_equal microposts(:most_recent),Micropost.first
  end

end
