#[1, 2, 3].each do |element|
#  puts element
#end

def my_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

my_each([1, 2, 3, 4]) do |element|
  puts element
end
