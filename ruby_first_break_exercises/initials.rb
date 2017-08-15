def initials(str)
  words = str.scan(/\w+/)
  result_str = ''
  words.length.times { |i| result_str << "#{words[i][0].upcase}"}
  '%s' % result_str
end

puts initials('Jan Kozlowski')
puts initials('Jan Krzysztof Rakoczy')
puts initials('marcin nowak')
