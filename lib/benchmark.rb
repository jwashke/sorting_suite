require 'benchmark'
require_relative '../lib/bubble_sort'
require_relative '../lib/insertion_sort'
require_relative '../lib/merge_sort'
require_relative '../lib/selection_sort'

module SortingSuite
  class SortingBenchmark
    include Benchmark
    def initialize
      @array
    end

    def time(sorting_class, *array)
      @array = array
      sorter = sorting_class.new
      time_taken = Benchmark.realtime {sorter.sort(@array)}
      "#{sorter.class.name.split('::').last} took #{time_taken} seconds"
    end

    def fastest(array)
      sorting_hash = sort_with_all(array)
      fastest = sorting_hash.values.min
      "#{sorting_hash.key(fastest)} is the fastest"
    end

    def slowest(array)
      sorting_hash = sort_with_all(array)
      slowest = sorting_hash.values.max
      "#{sorting_hash.key(slowest)} is the slowest"
    end

    def sort_with_all(array)
      sorting_hash = {}
      sorting_hash[:BubbleSort] = Benchmark.realtime {BubbleSort.new.sort(array)}
      sorting_hash[:InsertionSort] = Benchmark.realtime {InsertionSort.new.sort(array)}
      sorting_hash[:SelectionSort] = Benchmark.realtime {SelectionSort.new.sort(array)}
      sorting_hash[:MergeSort] = Benchmark.realtime {MergeSort.new.sort(array)}
      sorting_hash
    end
  end
end
