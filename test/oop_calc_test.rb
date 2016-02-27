require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'oop_calc'

# CalcTest class
class CalcTest < MiniTest::Test
  attr_accessor :user
  def setup
    @user = User.new
    @calculator = Calculator.new
  end

  def test_low_hanging_fruit
    assert true
  end

  def test_addition
    assert_equal 4, Calculator.add(2,2)
  end

  def test_subtraction
    assert_equal 4, Calculator.subtract(6,2)
  end

  def test_multiplication
    assert_equal 4, Calculator.multiply(2,2)
  end

  def test_divison
    assert_equal 4, Calculator.divide(8,2)
  end

  def test_choose_addition
    assert_equal '1', user.choose_operator
  end

  def test_choose_subtraction
    assert_equal '2', user_choose_operator
  end

  def test_choose_multiplication
    assert_equal '3', user_choose_operator
  end

  def test_choose_division
    assert_equal '4', user_choose_operator
  end
end
