require 'pry'

#figure out where the divide is and should change and you'll be golden
class InsSort

  def initialize(divide=0, time=0, time_elapsed=0, value=0)
    @divide = divide
    @time = time
    @time_elapsed = time_elapsed
    @value = value
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
    @value = array[@divide-1]
    insert_value(array, @value)
  end


  #fix this, and should be done

  def insert_value(array, value)
# starting at the value just moved into the sorted side
# if it is greater than its neighbor, or in position array[0] do nothing
# else traverse the array until at position array[0] or greater than previous neighbor

    pos = @divide-1
        until pos == 0 || value >= array[pos-1]
          pos -=1
        end
        array.delete_at(@divide-1)
        array.insert(pos, value)
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
test.sort((1..1000).to_a.shuffle)
