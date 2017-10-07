VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9]

gets.to_i.times do
  sudoku = []
  valid = true

  9.times { sudoku << gets.split(" ").map(&:to_i) }

  9.times do |i|
    if sudoku[i].uniq.sort != VALUES || sudoku.map { |a| a[i] }.uniq.sort != VALUES
      valid = false
      break
    end
  end

  3.times do |rows|
    3.times do |cols|
      square = sudoku[0 + (rows * 3)..2 + (rows * 3)].map { |a| a[0 + (cols * 3)..2 + (cols * 3)]}
      sum = 0
      square.each { |a| sum += a.inject(:+) }

      if sum != 45
        valid = false
        break
      end
    end
  end

  puts(valid ? "TAK" : "NIE")
  gets
end
