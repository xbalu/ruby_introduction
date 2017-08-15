def vowel_count(str)
  str.scan(/[aeiouy]/).length
end

puts vowel_count("test")
puts vowel_count("foobar")
