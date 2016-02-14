require 'pry'

class BubblierSort

def initialize
  @sorts = 0
end

def sort(array)
    until @sorted == true
      @sorted = true
      traverse_array(array)
    end
  puts array.to_s
  puts "Number of sorts: #{@sorts}"
end

def traverse_array(array)
  sorted = 0
  (0...array.length).each do |pos|
    compare(array, pos)
  end
  sorted
end

def compare(array, pos)
  if pos < array.length-1 && array[pos] > array[pos+1]
    switch_neighbor_order(array, pos)
    one_sort_occurs
  end
end

def one_sort_occurs
  @sorted = false
  @sorts += 1
end

def switch_neighbor_order(array, pos=0)
  array[pos], array[pos+1] = array[pos+1], array[pos]
end


end

test = BubblierSort.new
puts array = (1..100).to_a.shuffle
test.sort(array)
