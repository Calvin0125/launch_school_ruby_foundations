require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError
end

class Employee
  def hire
    raise(NoExperienceError)
  end
end

class TestHire < Minitest::Test
  def test_hire
    employee = Employee.new
    assert_raises(NoExperienceError) { employee.hire }
  end
end