gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort'

class BubbleSortTest < Minitest::Test

  def test_it_can_create_an_object_of_itself
    sorter = BubbleSort.new
    assert_equal BubbleSort, sorter.class
  end

  def test_it_can_make_a_pass_through_the_array
    sorter = BubbleSort.new
    assert_equal [2, 1, 3, 4], sorter.make_a_pass_through_the_array([4, 2, 1, 3])
  end

  def test_it_can_sort_an_array
    sorter = BubbleSort.new
    assert_equal [1, 2, 3, 4], sorter.sort([4, 2, 1, 3])
  end

  def test_it_can_sort_a_reversed_array
    sorter = BubbleSort.new
    assert_equal [1, 2, 3, 4], sorter.sort([4, 3, 2, 1])
  end

  def test_it_can_sort_a_presorted_array
    sorter = BubbleSort.new
    assert_equal [1, 2, 3, 4], sorter.sort([1, 2, 3, 4])
  end

  def test_it_can_sort_an_empty_array
    sorter = BubbleSort.new
    assert_equal [], sorter.sort([])
  end

  def test_it_can_sort_a_one_element_array
    sorter = BubbleSort.new
    assert_equal [1], sorter.sort([1])
  end

  def test_it_can_sort_a_very_large_array
    sorter = BubbleSort.new
    sorted_large_array = (1..1000).to_a
    shuffled_large_array = sorted_large_array.shuffle
    assert_equal sorted_large_array, sorter.sort(shuffled_large_array)
  end

  def test_it_can_sort_an_array_of_letters
    sorter = BubbleSort.new
    assert_equal ["a", "b", "c", "d"],sorter.sort(["d", "b", "a", "c"])
  end

end
