class Square < Figure
  attr_reader :length1

  def initialize(length1, unit)
    @length1 = length1
    self.unit = unit
  end

  def calculate_area
    length1 ** 2
  end

  def calculate_circuit
    4 * length1
  end

  def self.create_squares
    squares_array = []
    squares = [[3, "cm"], [4.45, "cm"], [12, "m"], [3.66, "km"]]
    squares.each {|a, unit| squares_array << Square.new(a, unit) }
    squares_array
  end
end
