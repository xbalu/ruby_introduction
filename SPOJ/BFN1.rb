def palindrome?(num)
  string = num.to_s
  string.gsub!(" ", "")
  string.downcase!
  string == string.reverse
end

gets.to_i.times do
  num = gets.to_i
  cnt = 0

  while !palindrome?(num)
    num = num + num.to_s.reverse.to_i
    cnt += 1
  end

  puts "#{num} #{cnt}"
end
