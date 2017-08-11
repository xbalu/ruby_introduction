require "./figure.rb"
require "./circle.rb"
require "./rectangle.rb"
require "./square.rb"
require "./trapeze.rb"

puts "Circles:"
Figure.print_areas_and_circuits(Circle.create_circles)
puts "Rectangles:"
Figure.print_areas_and_circuits(Rectangle.create_rectangles)
puts "Squares:"
Figure.print_areas_and_circuits(Square.create_squares)
puts "Trapezes:"
Figure.print_areas_and_circuits(Trapeze.create_trapezes)
