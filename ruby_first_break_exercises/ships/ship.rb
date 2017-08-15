class Ship
  attr_reader :parts, :parts_left
  attr_accessor :ship_body

  def initialize(parts_number)
    @parts = parts_number
    @parts_left = parts_number
    @ship_body = {}
  end

  def got_hit
    @parts_left -= 1
  end
end
