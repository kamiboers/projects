puts array = [5, 4, 2, 3, 1]
(0...array.length).each do |pos|
  times = array.length-1
  while times >=0 && array[pos] > array[pos+1]
    array[pos], array[pos+1] = array[pos+1], array[pos]
    times -= 1
  end
end
puts array
