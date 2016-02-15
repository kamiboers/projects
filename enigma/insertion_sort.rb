require 'pry'

#figure out where the divide is and should change and you'll be golden
class InsSort

  def initialize(divide=0, time=0, time_elapsed=0, switches=0)
    @divide = divide
    @time = time
    @time_elapsed = time_elapsed
    @switches = switches
  end

  def sort(array)
    puts "Unsorted array: #{array.to_s}"
    timer_start
    add_sorting_division_to_array(array)
    first_value_automatically_sorted(array)
    until array_sorted?(array)
      move_next_value_to_sorted_side(array, @divide)
    end
      timer_stop
      return_sorted_array(array)
  end

  def add_sorting_division_to_array(array)
    array.unshift(nil)
  end

  def first_value_automatically_sorted(array, pos=0)
    array[pos], array[pos+1] = array[pos+1], array[pos]
    @divide+=1
  end

  def array_sorted?(array)
    array.compact == array.compact.sort
  end

  def move_next_value_to_sorted_side(array, divide)
    @divide +=1
    array[divide], array[divide+1] = array[divide+1], array[divide]
    value = array[divide-1]
    pos = divide-1
    bubble_down_sort(array, value)
  end


  #fix this, and should be done

  def bubble_down_sort(array, value)
# starting at the value just moved into the sorted side
# if it is greater than its neighbor, or in position array[0] do nothing
# else swap the value with its neighbor
# continue to swap values until greater than neighbor or in position array[0]
# when done, move next value to sorted side of the array

    pos = @divide-1
        until pos == 0 || array[pos] >= array[pos-1]
          array[pos], array[pos-1] = array[pos-1], array[pos]
          @switches += 1
          pos -=1
        end
      if !array_sorted?(array)
        move_next_value_to_sorted_side(array, @divide)
      end
  end


def return_sorted_array(array)
  puts "Sorted array: #{array.compact.to_s}"
  puts "\nNumber of value switches: #{@switches}"
  puts "#{@time_elapsed} seconds elapsed during sorting.\n"
  initialize
end

def timer_start
  @time = Time.now
end

def timer_stop
  @time_elapsed = Time.now - @time
end

end

test = InsSort.new
test.sort((1..500).to_a.shuffle)
