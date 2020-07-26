require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(50)
    @transaction = Transaction.new(25)
  end

  def test_accept_money
    @transaction.amount_paid = @transaction.item_cost
    previous_amount = @register.total_money
    @register.accept_money(@transaction)
    assert_equal(previous_amount + @transaction.amount_paid, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = @transaction.item_cost + 20
    assert_equal(20, @register.change(@transaction))
  end

  def test_give_receipt
    # Assert Output could also have been used
    output = StringIO.new
    $stdout = output
    @register.give_receipt(@transaction)
    assert_equal("You've paid $25.\n", output.string)
  end
end