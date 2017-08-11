class Circle < Figure
  attr_reader :radius
  PI = 3.141592

  def initialize(radius, unit)
    @radius = radius
    self.unit = unit
  end

  def calculate_area
    PI * (radius ** 2)
  end

  def calculate_circuit
    2 * PI * radius
  end

  def self.create_circles
    circles_array = []
    circles = [[5, "cm"], [2.25, "cm"], [100, "m"], [1.33, "km"]]
    circles.each {|radius, unit| circles_array << Circle.new(radius, unit) }
    circles_array
  end
end
