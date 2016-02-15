module SortingSuite
  class BubbleSort
    def initialize
      @swapping = true
    end

    def sort(array)
      @swapping = true
      while @swapping
        @swapping = false
        array = make_a_pass_through_the_array(array)
      end
      array
    end

    private

    def make_a_pass_through_the_array(array)
      (array.length - 1).times do |index|
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          @swapping = true
        end
      end
      array
    end
  end
end
