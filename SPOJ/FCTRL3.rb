def tenths(num)
  case num
  when 4, 5, 6, 8 then 2
  when 7 then 4
  when 9 then 8
  else
    0
  end
end

def ones(num)
  case num
  when 0, 1 then 1
  when 2 then 2
  when 3 then 6
  when 4 then 4
  else
    0
  end
end

gets.to_i.times do
  num = gets.to_i
  puts "#{tenths(num)} #{ones(num)}"
end
