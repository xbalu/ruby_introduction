module Collar
  def pull
    puts "Pulling #{self}"
  end

  def self.say_hello
    puts "Hello from Colar module"
  end
end

module TrackingChip
  def get_tracking_id
    # a ||= b     ->     a = a || b
    # operator przypisze wartość rand tylko za pierwszym wywołaniem
    @tracking_id ||= rand(1000)
  end
end

class Dog
  # dołączenie metod klasowych
  #extend Collar
  include Collar
  # dołączenie metod instancyjnych
  include TrackingChip
end

class Cat
  include Collar
end

dog = Dog.new
puts dog.get_tracking_id
puts dog.get_tracking_id
#Dog.pull
Collar.say_hello
