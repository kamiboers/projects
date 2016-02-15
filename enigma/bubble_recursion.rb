require 'pry'

class BubbleSort

  def initialize
    @swapped_values = false
  end

  def sort(array)
    puts array.to_s
    n = array.length - 2

    loop do
      (0..n).each do |position|
        @swapped_values = false
        binding.pry
        if array[position] > array[position+1]
          array[position], array[position+1] = array[position+1], array[position]
          @swapped_values = true
        end
      end
        n-=1
      break if @swapped_values == false
    end
    puts array.to_s
  end

end
  test = BubbleSort.new
  test.sort([5, 3, 4, 1, 2])
