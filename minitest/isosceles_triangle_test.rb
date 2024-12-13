require 'minitest/autorun'
require_relative '../algorithm_challenges/003_isosceles_triangle/question'

class Isosceles_triangleTest < Minitest::Test
  def test_isosceles_triangle
    assert_equal [[1,0,0],[1,1,0],[1,1,1]], isosceles_triangle(3)
    assert_equal [[1,0,0,0,0],[1,1,0,0,0],[1,1,1,0,0],[1,1,1,1,0],[1,1,1,1,1]], isosceles_triangle(5)
  end
end