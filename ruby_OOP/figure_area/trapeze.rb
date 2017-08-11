class Trapeze < Figure
  include Math
  attr_reader :base1, :base2, :height

  def initialize(base1, base2, height, unit)
    @base1 = base1
    @base2 = base2
    @height = height
    self.unit = unit
  end

  def calculate_area
    (base1 + base2) * height / 2.0
  end

  def calculate_circuit
    (base1 + base2 + height) + Math.sqrt((base1 - base2) ** 2 + (height ** 2))
  end

  def self.create_trapezes
    trapezes_array = []
    trapezes = [[2.34, 6.66, 2, "cm"], [113, 33, 16, "cm"]]
    trapezes.each {|a, b, h, unit| trapezes_array << Trapeze.new(a, b, h, unit) }
    trapezes_array
  end
end
