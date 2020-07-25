require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestNotInclude < Minitest::Test
  def test_not_include
    array = ['abc', 123,]
    refute_includes(array, 'xyz')
  end
end
