DIRS = { 0 => [0, 1], 1 => [0, -1], 2 => [-1, 0], 3 => [1, 0] }

gets.to_i.times do
  steps = gets.to_i
  map = []
  steps.times { map << gets.split(" ").map(&:to_i) }
  x, y = 0, 0
  map.each do |a|
    dir = a[0]
    steps = a[1]
    x += DIRS[dir][0] * steps
    y += DIRS[dir][1] * steps
  end

  if x == 0 && y == 0
    puts "studnia"
  else
    vertical = y > 0 ? 0 : 1 if y != 0
    puts "#{vertical} #{y.abs}" if vertical

    horizontal = x > 0 ? 3 : 2 if x != 0
    puts "#{horizontal} #{x.abs}" if horizontal
  end
end
