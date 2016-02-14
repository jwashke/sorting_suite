require 'pry'
require 'pry-nav'

class InsertionSort

  def sort(array)
    array.length.times do |index|
      jndex = index
      array = sort_inner_loop(array, index)
    end
    array
  end

  def sort_inner_loop(array, index)
    jndex = index
    while jndex > 0 and array[jndex - 1] > array[jndex]
      array[jndex - 1], array[jndex] = array[jndex], array[jndex - 1]
      jndex -= 1
    end
    array
  end
end
