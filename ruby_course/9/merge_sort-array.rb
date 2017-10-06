require "pp"

def merge_sort(array)
  if array.size <= 1
    array
  else
    left = merge_sort(array[0, array.size / 2])
    right = merge_sort(array[array.size / 2 .. -1])

    merge_arrays(left, right)
  end
end

def merge_arrays(array1, array2)
  result = []
  a, b = 0, 0
  (array1.length + array2.length).times do
    if array1[a] && (array2[b].nil? || array1[a] < array2[b])
      result << array1[a]
      a += 1
    else
      result << array2[b]
      b += 1
    end
  end
  result
end

pp merge_sort([9, 1, 8, 2, 7, 3, 5, 4, 6])
pp merge_sort([5, 9, 10, 20, 3, 12, 15])
pp merge_arrays([5, 9, 10, 20], [3, 12, 15]); nil
