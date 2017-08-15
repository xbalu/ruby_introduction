require "pp"

def avg_array(*arrays)
  num_arrays = arrays.length
  single_array_length = arrays[0].length
  result_array = Array.new(single_array_length, 0)

  single_array_length.times do |i|
    num_arrays.times do |j|
      result_array[i] += arrays[j][i]
    end
  end

  result_array.map do |e|
    if (e / num_arrays) != (e.to_f / num_arrays)
      e.to_f / num_arrays
    else
      e / num_arrays
    end
  end
end

pp avg_array([1, 3, 5], [3, 5, 7])
pp avg_array([1, 5, 3, 22], [12, 22, 13, 5], [5, 12, 24, 5], [14, 40, 5, 17])
