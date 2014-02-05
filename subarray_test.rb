gem 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'subarray'

class SubarrayTest < Minitest::Test

  def test_it_finds_largest_subarray
    input = [[2,3], [4,5]]
    assert_equal [4,5], Subarray.finds_largest_subarray(input)
  end

  def test_it_finds_the_element_in_a_group
    input = [[45]]
    assert_equal [45], Subarray.greatest_from(input)
  end

  def test_it_finds_the_greatest_element_when_there_is_two
    input = [[45], [33]]
    assert_equal [45], Subarray.greatest_from(input)
  end

  def test_it_find_the_greatest_element_from_multiple
    input = [[4,5], [5,10],[25, 35]]
    assert_equal [60], Subarray.greatest_from(input)
  end

  def test_it_finds_the_greatest_element
    input = [[4,5], [5,10],[25, 35], [100]]
    assert_equal [100], Subarray.greatest_from(input)
  end

  def test_it_find_the_greatest_element_when_negative_values
    input = [[-4,-5], [-10],[-25, -35], [-100]]
    assert_equal [-9], Subarray.greatest_from(input)
  end

end
