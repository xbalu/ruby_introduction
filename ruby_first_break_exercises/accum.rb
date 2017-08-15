def accum(str)
  new_str = []
  str.length.times do |i|
    new_str[i] = "#{str[i].upcase}"
    i.times do |j|
      new_str[i] += "#{str[i].downcase}"
    end
  end
  new_str.join("-")
end

puts accum("abcd")
puts accum("RqaEzty")
puts accum("cwAt")
