module SortingSuite
  class InsertionSort
    def initialize
      @sorted = []
    end

    def sort(array)
      until array.empty?
        temp = array.shift
        if @sorted.empty?
          @sorted.push(temp)
        else
          was_sorted = false
          @sorted.each_with_index do |element, index|
            if temp < element
              @sorted.insert(index, temp)
              was_sorted = true
              break
            end
          end
          @sorted.push(temp) if was_sorted == false
        end
      end
      @sorted
    end
  end
end
