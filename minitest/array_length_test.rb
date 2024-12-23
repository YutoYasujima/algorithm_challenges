require 'minitest/autorun'
require_relative '../algorithm_challenges/010_array_length/question'

class ArrayLengthTest < Minitest::Test
  def test_array_length
    assert_equal 0, array_length([])
    assert_equal 1, array_length([1])
    assert_equal 3, array_length([1,2,3])
    assert_equal 5, array_length(['a','b','c','d','e'])
  end
end