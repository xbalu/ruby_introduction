require_relative "maximum"
require "test/unit"

class MaximumTest < Test::Unit::TestCase
  def test_empty_arguments
    assert_nil maximum()
  end

  def test_negative_numbers
    assert_equal -4, maximum(-8, -4)
  end

  def test_single_number
    assert_equal 10, maximum(10)
  end

  def test_equal_numbers
    assert_equal 1, maximum(1, 1, 1)
  end

  def test_maximum
    assert_equal 8, maximum(1, 2, 8, 3)
  end
end
