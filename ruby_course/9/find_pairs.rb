require "pp"

def find_pairs(array)
  result = []

  array.each do |i|
    array.each do |j|
      next if j <= i
      result << [i, j] if i + j == 10
    end
  end

  result
end

pp find_pairs([1, 2, 2, 3, 5, 1, 3, 7, 8, 9, 9, 2]); nil
