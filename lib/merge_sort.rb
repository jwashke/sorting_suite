module SortingSuite
  class MergeSort
    def sort(array)
      merge_sort(array)
    end

    def merge_sort(array)
      if array.length <= 1
        array
      else
        mid = array.length / 2
        left = array[0, mid]
        right = array[mid, array.length]
        left_array = merge_sort(left)
        right_array = merge_sort(right)
        merge(left_array, right_array)
      end
    end

    def merge(left_array, right_array)
      sorted_array = []
      until left_array.empty? or right_array.empty?
        if left_array[0] <= right_array[0]
          sorted_array.push(left_array.shift)
        else
          sorted_array.push(right_array.shift)
        end
      end
      sorted_array += left_array
      sorted_array += right_array
    end
  end
end
