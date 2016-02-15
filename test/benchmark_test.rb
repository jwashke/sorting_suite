gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/benchmark'
require_relative '../lib/bubble_sort'
require_relative '../lib/insertion_sort'
require_relative '../lib/merge_sort'

class SortingBenchmarkTest < Minitest::Test

  def setup
    @benchmark = SortingSuite::SortingBenchmark.new
  end

  def test_it_can_return_the_time_taken_to_bubble_sort_an_array
    assert_equal String, @benchmark.time(SortingSuite::BubbleSort, [1..10000].shuffle).class
  end

  def test_it_can_return_the_time_taken_to_sort_the_same_array
    assert_equal String, @benchmark.time(SortingSuite::BubbleSort, ([1..10000].shuffle)).class
    assert_equal String, @benchmark.time(SortingSuite::MergeSort).class
  end

  def test_it_can_return_the_fastest_sorting_method
    string = "MergeSort is the fastest"
    assert_equal string, @benchmark.fastest((1..5000).to_a.shuffle)
    #binding.pry
  end

  def test_it_can_return_the_slowest_sorting_method
    string = "BubbleSort is the slowest"
    assert_equal string, @benchmark.slowest((1..5000).to_a.shuffle)
  end
end
