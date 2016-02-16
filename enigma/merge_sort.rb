require 'pry'

class MergeSort

  def initialize
  end

  def sort(array)
    split(array)
  end

  def split(array)
  n = array.length
    return array if n == 1
    midpoint = n/2

     left_array = array[0...midpoint]
     right_array = array[midpoint..n]

     left = split(left_array)
     right = split(right_array)

     merge(left, right)
  end

  def merge(left, right)
    sorted =[]

    until left.empty? || right.empty?
      if left[0] <= right[0] || right[0] == nil
        sorted << left.shift
      elsif right[0] <= left[0] || left[0] == nil
        sorted << right.shift
      else
        sorted << right.shift
        sorted << left.shift
      end
    end
    puts (sorted + left + right)
  end


end

test = MergeSort.new
array = [2,1,4,3]
test.sort(array)
