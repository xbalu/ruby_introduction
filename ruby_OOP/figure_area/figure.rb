class Figure
  attr_accessor :unit

  def self.print_areas_and_circuits(array)
    array.length.times do |i|
      print "#{i + 1}. Area: %-9.2f %-2s^2" % [array[i].calculate_area, array[i].unit]
      print "   -   Circuit: %-7.2f %-2s^2\n" % [array[i].calculate_circuit, array[i].unit]
    end
  end
end
