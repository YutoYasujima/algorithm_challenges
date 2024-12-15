require 'minitest/autorun'
require_relative '../algorithm_challenges/005_array_reversal/question'

class ArrayReversalTest < Minitest::Test
  def test_array_reversal
    assert_equal [], array_reversal!([])
    assert_equal [3,2,1], array_reversal!([1,2,3])
    assert_equal [4,3,2,1], array_reversal!([1,2,3,4])
    assert_equal ["d","c","b","a"], array_reversal!(["a","b","c","d"])
    assert_equal ["e","d","c","b","a"], array_reversal!(["a","b","c","d","e"])
    assert_equal [3,"b",2,"a",1], array_reversal!([1,"a",2,"b",3])
  end
end