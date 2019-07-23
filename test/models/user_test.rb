require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "fixtures count" do
    assert_equal 2, User.count
  end
  
  test "email validations" do
    assert_equal true, users(:one).valid?
    assert_equal false, users(:two).valid?
  end

end
