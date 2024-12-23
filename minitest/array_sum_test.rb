require 'minitest/autorun'
require_relative '../algorithm_challenges/013_array_sum/question'

class ArraySumTest < Minitest::Test
  def test_array_sum
    assert_equal 0, array_sum([])
    assert_equal 0, array_sum([0])
    assert_equal 1, array_sum([1])
    assert_equal 6, array_sum([1,2,3])
    assert_equal -6, array_sum([-1,-2,-3])
  end
end