require 'minitest/autorun'
require_relative '../algorithm_challenges/002_median_of_three_values/question'

class Median_of_three_valuesTest < Minitest::Test
  def test_median_of_three_values
    assert_equal 1, median_of_three_values([1,1,1]) #1
    assert_equal 2, median_of_three_values([3,2,1]) #2
    assert_equal 2, median_of_three_values([3,1,2]) #3
    assert_equal 2, median_of_three_values([2,2,1]) #4
    assert_equal 2, median_of_three_values([2,1,2]) #5
    assert_equal 1, median_of_three_values([2,1,1]) #6
    assert_equal 2, median_of_three_values([2,3,1]) #7
    assert_equal 2, median_of_three_values([1,3,2]) #8
    assert_equal 1, median_of_three_values([1,2,1]) #9
    assert_equal 2, median_of_three_values([1,2,2]) #10
    assert_equal 2, median_of_three_values([2,1,3]) #11
    assert_equal 2, median_of_three_values([1,2,3]) #12
    assert_equal 1, median_of_three_values([1,1,2]) #13
  end
end