require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestNumeric < Minitest::Test
  def test_numeric
    value = 3.14
    assert_kind_of(Numeric, value)
  end
end