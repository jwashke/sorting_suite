module SortingSuite
  class SelectionSort

    def sort(array)
      0.upto(array.length - 2) do |index|
        sort_inner_loop(array, index)
      end
      array
    end

    private

    def sort_inner_loop(array, index)
      min = index
      (index + 1).upto(array.length - 1) do |jndex|
        min = jndex  if array[jndex] < array[min]
      end
      array[index], array[min] = array[min], array[index] if index != min
      array
    end
  end
end
