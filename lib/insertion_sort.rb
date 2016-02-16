module SortingSuite
  class InsertionSort
    def initialize
      @sorted = []
    end

    def sort(array)
      array.each do |unsorted_element|
        @sorted.insert(find_index(unsorted_element), unsorted_element)
      end
      @sorted
    end

    def find_index(unsorted_element)
      @sorted.each_with_index do |sorted_element, index|
        return index if unsorted_element < sorted_element
      end
      -1
    end
  end
end
