require 'minitest/autorun'
require_relative '../algorithm_challenges/006_base_conversion/question'

class BaseConversionTest < Minitest::Test
  def test_array_reversal
    assert_equal '10', base_conversion(2, 2)
    assert_equal '2', base_conversion(2, 8)
    assert_equal '2', base_conversion(2, 16)
    assert_equal '1000', base_conversion(8, 2)
    assert_equal '10', base_conversion(8, 8)
    assert_equal '8', base_conversion(8, 16)
    assert_equal '1010', base_conversion(10, 2)
    assert_equal '12', base_conversion(10, 8)
    assert_equal 'A', base_conversion(10, 16)
    assert_equal '10000', base_conversion(16, 2)
    assert_equal '20', base_conversion(16, 8)
    assert_equal '10', base_conversion(16, 16)
    assert_equal '1011010', base_conversion(90, 2)
    assert_equal '132', base_conversion(90, 8)
    assert_equal '5A', base_conversion(90, 16)
    assert_equal '5B', base_conversion(91, 16)
    assert_equal '5C', base_conversion(92, 16)
    assert_equal '5D', base_conversion(93, 16)
    assert_equal '5E', base_conversion(94, 16)
    assert_equal '5F', base_conversion(95, 16)
  end
end