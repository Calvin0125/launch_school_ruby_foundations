require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestOdd < Minitest::Test
  def test_odd
    value = 2
    assert(value.odd?, 'value is not odd')
  end
end
