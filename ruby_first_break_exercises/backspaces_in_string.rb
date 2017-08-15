def backspaces_in_string(string)
  result_str = string

  while string.include?("#")
    index = string.index("#")
    if index > 0 && string[index - 1] != "#"
      string[(index - 1)..index] = ""
    else
      string[index] = ""
    end
  end

  string
end

puts backspaces_in_string("a#bc#d")
puts backspaces_in_string("abc#d##c")
puts backspaces_in_string("abc##d######")
puts backspaces_in_string("######")
puts backspaces_in_string("")
