require 'pry'

class BubblierSort

def initialize
  # @sorts = 0
end

# def sort(array)
#   loop do
#     (0...array.count).each do |pos|
#       @swapped = false
#       if neighbors_out_of_order?(array, pos)
#         switch_neighbor_order(array, pos)
#         one_sort_occurs
#       end
#     end
#     break if @swapped == false
#   end
# end

def sort(array, pos=0)
if neighbors_out_of_order?(array, pos)
  switch_neighbor_order(array, pos)
else
  move_up_one_position(pos)
end
end

def neighbors_out_of_order?(array, pos=0)
  array[pos] > array[pos+1]
end

def switch_neighbor_order(array, pos=0)
  array[pos], array[pos+1] = array[pos+1], array[pos]
end

def move_up_one_position(pos)
    pos += 1
end

#
# def one_sort_occurs
#   @swapped = true
#   @sorts += 1
# end
#

#
# def exclude_highest_sorted_numbers
# end
#
end
