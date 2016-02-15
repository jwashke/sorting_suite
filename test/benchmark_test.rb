gem 'minitest'
require 'minitest/autorun'
require_relative '../lib/benchmark'

class BenchmarkTest Minitest::Test

  def setup
    benchmark = SortingSuite::Benchmark.new
  end

  def test_it_can_return_the_time_taken_sort_an_array
    string = "BubbleSort took /d*/ seconds"
    assert_equal string, benchmark.time(SortingSuite::BubbleSort, [3, 3, 4, 5, 1])
  end

  def test_it_can_return_the_time_taken_to_sort_the_same_array
    string = "InsertionSort took /d*/ seconds"
    benchmark.time(SortingSuite::BubbleSort, [3, 3, 4, 5, 1])
    assert_equal string, benchmark.time(SortingSuite::InsertionSort)
  end

  def test_it_can_return_the_fastest_sorting_method
    string = "MergeSort is the fastest"
    assert_equal string, benchmark.fastest([2, 8, 1, 0, 5])
  end

  def test_it_can_return_the_slowest_sorting_method
    string = "BubbleSort is the slowest"
    assert_equal string, benchmark.slowest([1, 2, 3, 4, 5])
  end
