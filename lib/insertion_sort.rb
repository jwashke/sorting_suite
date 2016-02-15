module SortingSuite
  class InsertionSort

    def sort(array)
      sorted = []
      until array.empty?
        temp = array.shift
        if sorted.empty?
          sorted.push(temp)
        else
          was_sorted = false
          sorted.each_with_index do |element, index|
            if temp < element
              sorted.insert(index, temp)
              was_sorted = true
              break
            end
          end
          sorted.push(temp) if was_sorted == false
        end
      end
      sorted
    end

    def inplace_sort(array)
      array.length.times do |index|
        jndex = index
        array = sort_inner_loop(array, index)
      end
      array
    end

    private

    def sort_inner_loop(array, index)
      jndex = index
      while jndex > 0 and array[jndex - 1] > array[jndex]
        array[jndex - 1], array[jndex] = array[jndex], array[jndex - 1]
        jndex -= 1
      end
      array
    end
  end
end
