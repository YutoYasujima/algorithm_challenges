require 'minitest/autorun'
require_relative '../algorithm_challenges/022_euclidean_algorithm/question'

class EuclideanAlgorithmTest < Minitest::Test
  def test_euclidean_algorithm
    assert_equal 3,  gcd(24, 15)
    assert_equal 20, gcd(100, 20)
    assert_equal 1,  gcd(24, 13)
  end
end