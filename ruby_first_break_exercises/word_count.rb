def word_count(sentence)
  sentence.downcase!
  words = sentence.scan(/[\w[ąćęłńóśźż]*]+/)
  result = {}
  i = 0
  while words.length > 0
    word = words[i]
    times = words.find_all { |element| element == words[i] }.length
    result[word] = times
    words.delete(word)
  end
  result
end

puts word_count('foo Foo bar bar Bar')
puts word_count('Losowy ciąg znaków ciąg')
