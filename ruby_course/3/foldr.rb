def foldr(acc, array)
  array.reverse.each do |elm|
    acc = yield(acc, elm)
  end
  acc
end

puts foldr(0, [3, 4, 65, 9]) { |acc, elm| elm - acc }
