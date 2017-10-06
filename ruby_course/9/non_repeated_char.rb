def find_first_non_repeated_char(string)
  string.chars.uniq do |char|
    return char if string.count(char) == 1
  end
end

puts find_first_non_repeated_char("aaabbcccdeefg")
