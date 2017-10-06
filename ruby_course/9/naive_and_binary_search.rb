def naive_search(array, element)
  array.each do |e|
    return e if e == element
  end
  nil
end

def binary_search(array, element)
  min = 0
  max = array.size

  loop do
    c = (min + max) / 2

    if array[c] == element
      return array[c]
    elsif array[c] < element
      min = c + 1
    else
      max = c - 1
    end
  end
  nil
end

sorted_array = []
10000.times { |i| sorted_array << i }

t = Time.now
puts naive_search(sorted_array, 9999), "#{(Time.now - t) * 1000} ms"
t = Time.now
puts binary_search(sorted_array, 9999), "#{(Time.now - t) * 1000} ms"
