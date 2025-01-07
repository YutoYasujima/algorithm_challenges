require 'minitest/autorun'
require_relative '../algorithm_challenges/020_binary_search/question'

class BinarySearchTest < Minitest::Test
  def test_binary_search
    assert_equal 0, binary_search([0], 0)
    assert_equal 0, binary_search([1, 2, 3, 4], 1)
    assert_equal 1, binary_search([1, 2, 3, 4], 2)
    assert_equal 2, binary_search([1, 2, 3, 4], 3)
    assert_equal 3, binary_search([1, 2, 3, 4], 4)
    assert_equal 1, binary_search([1, 2, 3, 4], 2)
    assert_equal 0, binary_search([1, 2, 3, 4, 5], 1)
    assert_equal 1, binary_search([1, 2, 3, 4, 5], 2)
    assert_equal 2, binary_search([1, 2, 3, 4, 5], 3)
    assert_equal 3, binary_search([1, 2, 3, 4, 5], 4)
    assert_equal 4, binary_search([1, 2, 3, 4, 5], 5)
    assert_equal 3, binary_search(['a', 'b', 'c', 'd', 'e'], 'd')
    assert_equal -1, binary_search([0], -1)
    assert_equal -1, binary_search([0], 1)
    assert_equal -1, binary_search([1, 3, 5, 7], 0)
    assert_equal -1, binary_search([1, 3, 5, 7], 2)
    assert_equal -1, binary_search([1, 3, 5, 7], 4)
    assert_equal -1, binary_search([1, 3, 5, 7], 6)
    assert_equal -1, binary_search([1, 3, 5, 7], 8)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 0)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 2)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 4)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 6)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 8)
    assert_equal -1, binary_search([1, 3, 5, 7, 9], 10)
  end
end