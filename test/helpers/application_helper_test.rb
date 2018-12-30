require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "To-do App"
    assert_equal full_title("All user"), "All user | To-do App"
  end
end
