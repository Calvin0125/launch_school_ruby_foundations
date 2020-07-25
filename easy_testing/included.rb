require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestIncluded < Minitest::Test
  def test_included
    list = ['abc', 123, 'xyz']
    assert_includes(list, 'xyz')
  end
end