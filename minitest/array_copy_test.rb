require 'minitest/autorun'
require_relative '../algorithm_challenges/011_array_copy/question'

class ArrayCopyTest < Minitest::Test
  def test_array_copy
    array = []
    assert_equal true, (array == array_copy(array)) && !array.equal?(array_copy(array))
    array = [1,2,3]
    assert_equal true, (array == array_copy(array)) && !array.equal?(array_copy(array))
    array = ['a','b','c','d','e']
    assert_equal true, (array == array_copy(array)) && !array.equal?(array_copy(array))
  end
end