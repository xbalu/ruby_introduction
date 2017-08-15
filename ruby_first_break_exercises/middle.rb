def middle(str)
  length = str.length

  if length.even?
    '%s%s' % [str[length / 2 - 1], str[length / 2]]
  else
    str[length / 2]
  end
end

puts middle("abc")
puts middle("middle")
puts middle("tesTing")
