def palindrome?(sentence)
  sentence.downcase!
  sentence = sentence.delete(" ")
  sentence_reversed = sentence.reverse

  sentence.length.times do |i|
    return false if sentence[i] != sentence_reversed[i]
  end

  return true
end

puts palindrome?('Kobyła ma mały bok')
puts palindrome?('kajak')
puts palindrome?('kajak i wiosło')
