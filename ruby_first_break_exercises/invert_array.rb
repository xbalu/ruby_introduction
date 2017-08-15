require "pp"

def invert_array(array)
  array.map { |element| -element }
end

pp invert_array([1, 2, 3, 4, 5])
pp invert_array([1, -2, 3, -4, 5])
pp invert_array([0])
