require 'pry'

class BubbleSort

  def initialize
    @swapped_values = false
  end

  def sort(array)
    puts array.to_s
    timer_start
    n = array.length - 2

    loop do
      (0..n).each do |position|
        @swapped_values = false
        if array[position] > array[position+1]
          array[position], array[position+1] = array[position+1], array[position]
          @swapped_values = true
        end
      end
        n-=1
      break if @swapped_values == false
    end
    timer_stop
    puts array.to_s
    puts "Time elapsed: #{@time_elapsed} seconds."
  end

  def timer_start
    @time = Time.now
  end

  def timer_stop
    @time_elapsed = Time.now - @time
  end

end
  test = BubbleSort.new
  test.sort((1..10).to_a.shuffle)
