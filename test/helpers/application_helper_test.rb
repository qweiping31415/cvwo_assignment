require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Dueet"
    assert_equal full_title("All user"), "All user | Dueet"
  end
end
