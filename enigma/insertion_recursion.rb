class InsertionSort

def initialize(time=0, time_elapsed=0)
  @time = time
  @time_elapsed = time_elapsed
end

def sort(array)
array.each_with_index do |value, position|
  traverse_left = position - 1
  while traverse_left >= 0
    break if array[traverse_left] <= value
    array[traverse_left+1] = array[traverse_left]
    traverse_left -= 1
  end
  array[traverse_left+1] = value
end
end

def timer_start
  @time = Time.now
end

def timer_stop
  @time_elapsed = Time.now - @time
end

def return_sorted_array
  puts "Sorted array: #{array.to_s}"
  puts "Seconds elapsed: #{@time_elapsed}"
end

end

sort = InsertionSort.new
sort((1..10000).to_a.shuffle)
