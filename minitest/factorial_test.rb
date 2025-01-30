require 'minitest/autorun'
require_relative '../algorithm_challenges/021_factorial/question'

class FactorialTest < Minitest::Test
  def test_factorial
    assert_equal 1, factorial(0)
    assert_equal 1, factorial(1)
    assert_equal 2, factorial(2)
    assert_equal 6, factorial(3)
    assert_equal 24, factorial(4)
    assert_equal 120, factorial(5)
    assert_equal 720, factorial(6)
    assert_equal 5040, factorial(7)
    assert_equal 40320, factorial(8)
    assert_equal 362880, factorial(9)
    assert_equal 3628800, factorial(10)
  end
end