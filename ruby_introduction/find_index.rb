# Pętla while
# def find_index(array, value)
#   index = 0
#
#   while index < array.length
#     if array[index] == value
#       puts index
#       return
#     end
#
#     index += 1
#   end
#
#   puts "not found"
# end

# Array.index
def find_index(array, value)
  index = array.index(value)
  index == nil ? (puts "not found") : (puts index)
end

find_index([1, 2, 3, 4, 5], 3)
find_index([5, 8, 6, 2, 2, 10], 2)
find_index([10, 20, 30], 100)
find_index([], 0)
