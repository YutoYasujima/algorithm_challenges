require 'minitest/autorun'
require_relative '../algorithm_challenges/004_pyramid/question'

class Isosceles_triangleTest < Minitest::Test
  def test_isosceles_triangle
    assert_equal [[1]], pyramid(1)
    assert_equal [[0,1,0],[1,1,1]], pyramid(2)
    assert_equal [[0,0,1,0,0],[0,1,1,1,0],[1,1,1,1,1]], pyramid(3)
    assert_equal [[0,0,0,1,0,0,0],[0,0,1,1,1,0,0],[0,1,1,1,1,1,0],[1,1,1,1,1,1,1]], pyramid(4)
  end
end