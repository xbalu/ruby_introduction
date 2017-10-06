def reverse_string_iteratively(string)
  result_string = ""

  string.each_char do |char|
    result_string.insert(0, char)
  end

  result_string
end

def reverse_string_recursively(str)
  return str if str.length <= 1

  str[-1] + reverse_string_recursively(str[0...-1])
end

puts reverse_string_iteratively("this is some text")
puts reverse_string_recursively("this is some text")
