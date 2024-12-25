require 'minitest/autorun'
require_relative '../algorithm_challenges/014_make_rectangle/question'

class MakeRectangleTest < Minitest::Test
  def test_make_rectangle
    assert_output(/(\*{5}\n){2}\*{5}\n?/, nil) do
      make_rectangle(5, 3)
    end

    assert_output(/(\*{2}\n){5}\*{2}\n?/, nil) do
      make_rectangle(2, 6)
    end

    assert_output(/\*\n?/, nil) do
      make_rectangle(1, 1)
    end
  end
end