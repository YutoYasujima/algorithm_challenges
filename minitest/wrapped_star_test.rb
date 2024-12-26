require 'minitest/autorun'
require_relative '../algorithm_challenges/015_wrapped_star/question'

class WrappedStarTest < Minitest::Test
  def test_wrapped_star
    assert_output(/\A(☆{5}\n){2}☆{2}\n?\z/, nil) do
      wrapped_star(12, 5)
    end

    assert_output(/\A☆{3}\n?\z/, nil) do
      wrapped_star(3, 5)
    end

    assert_output(/\A☆\n?\n?\z/, nil) do
      wrapped_star(1, 1)
    end
  end
end