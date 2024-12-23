require 'minitest/autorun'
require_relative '../algorithm_challenges/012_array_concat/question'

class ArrayConcatTest < Minitest::Test
  def test_array_concat
    assert_equal [], array_concat([], [])
    assert_equal [1,2,3], array_concat([1,2,3], [])
    assert_equal [4,5], array_concat([], [4,5])
    assert_equal [1,2,3,4,5], array_concat([1,2,3], [4,5])
    assert_equal ['a','b','c','d','e'], array_concat(['a','b'], ['c','d','e'])
    assert_equal [1,2,3,'a','b'], array_concat([1,2,3], ['a','b'])
  end
end