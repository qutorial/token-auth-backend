require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "fixtures count" do
     assert_equal 2, User.count
  end
  
end
