class Muscle
  include Comparable
  attr_reader :circuit

  def initialize(circuit)
    @circuit = circuit
  end

  def <=>(other_muscle)
    self.circuit <=> other_muscle.circuit
  end
end

biceps1 = Muscle.new(45)
biceps2 = Muscle.new(42)

puts biceps1 <=> biceps2
