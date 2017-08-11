class Rectangle < Figure
  attr_reader :length1, :length2

  def initialize(length1, length2, unit)
    @length1 = length1
    @length2 = length2
    self.unit = unit
  end

  def calculate_area
    length1 * length2
  end

  def calculate_circuit
    2 * (length1 + length2)
  end

  def self.create_rectangles
    rectangles_array = []
    rectangles = [[5, 2, "cm"], [3.33, 4.20, "cm"], [124, 33, "m"], [1.2, 2.2, "km"]]
    rectangles.each {|a, b, unit| rectangles_array << Rectangle.new(a, b, unit) }
    rectangles_array
  end
end
