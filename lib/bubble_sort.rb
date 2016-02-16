module SortingSuite
  class BubbleSort
    attr_reader :sorted_array

    def initialize
      @swapping = true
    end

    def sort(unsorted_array)
      @swapping = true
      @sorted_array = unsorted_array
      while @swapping
        @swapping = false
        make_a_pass_through_the_array
      end
      sorted_array
    end

    private

    def make_a_pass_through_the_array
      (sorted_array.length - 1).times do |index|
        swap(index) if sorted_array[index] > sorted_array[index + 1]
      end
    end

    def swap(index)
      @sorted_array[index], @sorted_array[index + 1] = @sorted_array[index + 1], @sorted_array[index]
      @swapping = true
    end
  end
end
