# module X
class X
  class Lamp
    def name
      "Lamp from X class"
    end
  end
end

module Y
  class Lamp
    def name
      "Lamp from Y module"
    end
  end
end

puts X::Lamp.new.name
puts Y::Lamp.new.name
