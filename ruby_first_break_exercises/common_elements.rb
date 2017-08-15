require "pp"

def common_elements(array1, array2)
  result_array = []
  array1.each do |element1|
    array2.each do |element2|
      if element1 == element2
        result_array << element1
      end
    end
  end
  result_array
end

pp common_elements([1, 2, 3, 4, 5], [4, 5, 6])
pp common_elements(['a', 'b', 'c', 'd'], ['c','d', 'e'])
pp common_elements([14, 'apple', 1227, 'cat'], ['cat', 166, 541, 1227])
