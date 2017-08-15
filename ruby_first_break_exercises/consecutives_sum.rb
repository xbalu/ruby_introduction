require "pp"

def consecutives_sum(array)
  array.length.times do |i|
    number_times = 0
    j = i

    while (array[j + 1] == array[j]) && array[j] != nil
      number_times += 1
      j += 1
    end

    if number_times > 0
      old_value = array[i]
      array[i] *= (number_times + 1)
      (number_times).times do
        id = array.index(old_value)
        array.delete_at(id)
      end
    end
  end
  array
end

pp consecutives_sum([1, 4, 4, 4, 0, 4, 3, 3, 1])
pp consecutives_sum([1, 1, 7, 7, 3])
pp consecutives_sum([-5, -5, 7, 7, 12, 0])
