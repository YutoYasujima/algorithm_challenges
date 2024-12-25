require 'minitest/autorun'
require_relative '../algorithm_challenges/017_simple_linear_search/question'

class SimpleLinearSearchTest < Minitest::Test
  def test_simple_linear_search
    assert_equal -1, simple_linear_search([], 1)
    assert_equal -1, simple_linear_search(['a', 'p', 'p', 'l', 'e'], 'b')
    assert_equal 2, simple_linear_search([2, 1, 4, 3], 4)
    assert_equal 2, simple_linear_search(['h', 'e', 'l', 'l', 'o'], 'l')
  end
end