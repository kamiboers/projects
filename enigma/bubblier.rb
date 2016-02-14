require 'pry'

class BubblierSort

def initialize
  @switches = 0
end

def sort(array)
  print_original(array)
  timer_start
  @num_fewer_comparisons = 0
    until @sorted == true
      @sorted = true
      traverse_array(array)
    end
    timer_stop
    print_final(array)
end

def print_original(array)
  puts "\nScrambled values:\n #{array.to_s}"
end

def traverse_array(array)
  sorted = 0
  num_unsorted = array.length - @num_fewer_comparisons
  (0...num_unsorted).each do |pos|
    compare_neighboring_values(array, pos)
  end
  @num_fewer_comparisons += 1
end

def compare_neighboring_values(array, pos)
  if pos < array.length-1 && array[pos] > array[pos+1]
    switch_neighboring_value_order(array, pos)
    one_value_switch_occurs
  end
end

def switch_neighboring_value_order(array, pos=0)
  array[pos], array[pos+1] = array[pos+1], array[pos]
end

def one_value_switch_occurs
  @sorted = false
  @switches += 1
end

def print_final(array)
  puts "\nSorted values:\n #{array.to_s}"
  puts "\nNumber of value switches: #{@switches}"
  puts "#{@time_elapsed} seconds elapsed during sorting.\n"
end

def timer_start
  @time = Time.now
end

def timer_stop
  @time_elapsed = Time.now - @time
end

end

test = BubblierSort.new
test.sort((1..10000).to_a.shuffle)
test.sort(['a', 'c', 'd', 'A', 'a', 'f'])
