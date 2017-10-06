def palindrome?(string)
  string.gsub!(" ", "")
  string.downcase!
  string == string.reverse
end

puts palindrome?("test")
puts palindrome?("Kobyla ma maly bok")
puts palindrome?("nonnon")
