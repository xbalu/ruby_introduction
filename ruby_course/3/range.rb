def range(from, to)
  while from < to
    yield from
    from = from + 1
  end
end

# 1 sposób: wykorzystanie metody
range(7, 18) { |number| puts number if number % 2 == 1 }
# 2 sposób w jednej linii
(7..18).each { |number| puts number if number.odd? }
