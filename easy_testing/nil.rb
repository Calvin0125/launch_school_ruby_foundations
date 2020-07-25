require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestNil < Minitest::Test
  def test_nil
    value = nil
    assert_nil(value, 'value is not nil')
  end
end