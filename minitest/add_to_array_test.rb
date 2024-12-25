require 'minitest/autorun'
require_relative '../algorithm_challenges/016_add_to_array/question'

class ArrayToArrayTest < Minitest::Test
  def test_add_to_array
    assert_equal [0], add_to_array(0)
    assert_equal [0, 1, 2, 3, 4, 5], add_to_array(5)
  end
end