 require 'pry'

 class MergeSort

   def initialize
   end

   def sort(array)

     n = array.length
     return array if n <= 1
      left_array = array[0..(n/2-1)]
      right_array = array[(n/2)..n]
      puts left = sort(left_array).to_a.compact.flatten
      puts right = sort(right_array).to_a.compact.flatten
      merge(left, right)
   end

   def merge(left, right)
     sorted =[]
     binding.pry
     until left.empty? || right.empty?
       if left[0] <= right[0]
         sorted << left.shift
       elsif right[0] <= left[0]
         sorted << right.shift
      #  else
      #    sorted << right.shift
      #    sorted << left.shift
       end
     end
     puts (sorted + left + right).flatten
   end


end

test = MergeSort.new
array = [2,1,4,3]
test.sort(array)
