require 'minitest/autorun'
require_relative '../algorithm_challenges/018_test_score_distribution/question'

class TestScoreDistributionTest < Minitest::Test
  def test_test_score_distribution
    assert_output(
      /  0 ～  9| *\n 10 ～ 19|\n 20 ～ 29| *\n 30 ～ 39|\n 40 ～ 49| * * *\n 50 ～ 59| *\n 60 ～ 69|\n 70 ～ 79| * *\n 80 ～ 89|\n 90 ～ 99| *\n      100| *\n/, nil) do
        test_score_distribution([45, 78, 55, 48, 23, 90, 9, 72, 100, 41])
    end

    assert_output(
      /  0 ～  9| * *\n 10 ～ 19| *\n 20 ～ 29| *\n 30 ～ 39| *\n 40 ～ 49| *\n 50 ～ 59| *\n 60 ～ 69| *\n 70 ～ 79| *\n 80 ～ 89| *\n 90 ～ 99| *\n      100| *\n/, nil) do
        test_score_distribution([0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
    end
  end
end