require 'minitest/autorun'
require_relative '../algorithm_challenges/019_three_dimensional_array/question'

class ThreeDimensionalArrayTest < Minitest::Test
  def test_three_dimensional_array
    assert_equal [[165, 160, 93], [83, 197, 135], [149, 181, 168], [144, 100, 193]],
    three_dimensional_array([
      [[86, 73, 54], [43, 97, 65], [74, 92, 88], [69, 50, 99]],
      [[79, 87, 39], [40, 100, 70], [75, 89, 80], [75, 50, 94]]
    ])

    assert_equal [[14,16,18], [20,22,24], [26,28,30], [32,34,36]],
    three_dimensional_array([
      [[1, 2, 3],[4, 5, 6],[7, 8, 9],[10, 11, 12]],
      [[13, 14, 15],[16, 17, 18],[19, 20, 21],[22, 23, 24]]
    ])
  end
end

