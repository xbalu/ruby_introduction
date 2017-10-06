class Computation
  def initialize
  end

  def value
    @value ||= calculate_value
  end

  private

  def calculate_value
    sleep 5
    123
  end
end

c = Computation.new
puts c.value
puts c.value
