require 'pry'


class InsSort

  def initialize(divide=0)
    @divide = divide
  end

  def sort(array)
    add_sorting_division_to_array(array)
    first_value_automatically_sorted(array)
    until array_sorted?(array)
      find_sorted_and_unsorted_divide(array)
      move_next_value_to_sorted_side(array, @divide)

    end
      return_sorted_array(array)
  end

  def add_sorting_division_to_array(array)
    array.unshift(nil)
  end

  def first_value_automatically_sorted(array, pos=0)
    array[pos], array[pos+1] = array[pos+1], array[pos]
  end

  def find_sorted_and_unsorted_divide(array)
    (0...array.length).each do |pos|
      if array[pos+1] == nil
        binding.pry
        @divide += 1
      end
      break if @divide != nil
    end
  end

  def array_sorted?(array)
    array[-1] == nil
  end

  def move_next_value_to_sorted_side(array, divide)
    array[divide], array[divide+1] = array[divide+1], array[divide]
    binding.pry
      @divide +=1
    value = array[divide-1]
    pos = divide-1
    bubble_down_sort(array, value, pos)
    binding.pry
  end

  def bubble_down_sort(array, value, pos)
    while array[pos-1] > array[pos]
      array[pos], array[pos-1] = array[pos-1], array[pos]
    end
  end


#
# if array[-1] == nil
#   @sorted = true
# else
#  (0...array.length).each do |pos|
#   if array[pos+1] == nil
#     if array[pos+2] > array[pos]
#       array[pos+1] = array[pos+2]
#       array[pos+2] = nil
#     elsif array[pos+2] <= array[pos]
#       array[pos+1] = array[pos]
#       array[pos] = array[pos+2]
#       array[pos+2] = nil
#       binding.pry
#     end
#   end
# end
# end
def return_sorted_array(array)
  puts array.to_s
end

end

test = InsSort.new
array = [5, 4, 2, 3, 1]
test.sort(array)
