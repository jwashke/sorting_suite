gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/insertion_sort'

class InsertionSortTest < Minitest::Test

  def setup
    @sorter = SortingSuite::InsertionSort.new
  end

  def test_it_can_create_an_object_of_itself
    assert_equal SortingSuite::InsertionSort, @sorter.class
  end

  def test_it_can_sort_an_array
    assert_equal [1, 2, 3, 4], @sorter.sort([4, 2, 1, 3])
  end

  def test_it_can_sort_a_reversed_array
    assert_equal [1, 2, 3, 4], @sorter.sort([4, 3, 2, 1])
  end

  def test_it_can_sort_a_presorted_array
    assert_equal [1, 2, 3, 4], @sorter.sort([1, 2, 3, 4])
  end

  def test_it_can_sort_an_empty_array
    assert_equal [], @sorter.sort([])
  end

  def test_it_can_sort_a_one_element_array
    assert_equal [1], @sorter.sort([1])
  end

  def test_it_can_sort_a_very_large_array
    sorted_large_array = (1..1000).to_a
    shuffled_large_array = sorted_large_array.shuffle
    assert_equal sorted_large_array, @sorter.sort(shuffled_large_array)
  end

  def test_it_can_sort_an_array_of_letters
    assert_equal ["a", "b", "c", "d"], @sorter.sort(["d", "b", "a", "c"])
  end
end
