require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TestTransaction < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(50)
    input = StringIO.new("50\n")
    transaction.prompt_for_payment(input: input)
    assert_equal(50, transaction.amount_paid)
    end
  end
end