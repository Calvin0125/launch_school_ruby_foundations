require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestSame < Minitest::Test
  def test_same
    assert_same(list, list.process)
  end
end