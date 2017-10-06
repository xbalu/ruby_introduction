class Car
end

class Cookie
end

class CoffeeMachine
  def self.company_name
    "Foo company"
  end

  def grind_grains
    puts "Grinding grains"
  end

  def self.show
    self
  end

  def make_coffee
    self.grind_grains
    puts "Making coffee now"
    self.add_milk
    self.class.company_name
  end

  def add_milk
    puts "Pouring milk"
  end
end

class Cat
end

class Dog
end
