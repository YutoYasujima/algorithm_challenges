require 'minitest/autorun'
require_relative '../algorithm_challenges/009_leap_year/question'

class LeapYearTest < Minitest::Test
  def test_leap_year
    assert_equal false, leap_year?(1900)
    assert_equal false, leap_year?(1990)
    assert_equal false, leap_year?(1991)
    assert_equal false, leap_year?(2010)
    assert_equal false, leap_year?(3000)
    assert_equal true, leap_year?(1980)
    assert_equal true, leap_year?(1992)
    assert_equal true, leap_year?(2000)
    assert_equal true, leap_year?(2024)
    assert_equal true, leap_year?(4000)
  end
end