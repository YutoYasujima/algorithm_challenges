require 'minitest/autorun'
require_relative '../algorithm_challenges/001_maximum_of_three_values/question'

class Maximum_of_three_valuesTest < Minitest::Test
  def test_maximum_of_three_values
    assert_equal 100, maximum_of_three_values([1,10,100])
    assert_equal 0, maximum_of_three_values([-10,0,-5])
    assert_equal -1, maximum_of_three_values([-10,-1,-5])
  end
end