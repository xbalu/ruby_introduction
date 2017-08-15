class Farm
  def initialize(*animals)
    @animals = animals
  end

  def give_sounds
    @animals.each { |animal| animal.give_sound }
  end
end

class Animal
  def give_sound
  end
end

class Dog < Animal
  def give_sound
    puts "woof, woof!"
  end
end

class Cat < Animal
  def give_sound
    puts "meow, meow!"
  end
end

class Duck < Animal
  def give_sound
    puts "quack, quack!"
  end
end

class Goose < Animal
  def give_sound
    puts "honk, honk!"
  end
end

dog = Dog.new
cat = Cat.new
duck = Duck.new
goose = Goose.new
farm = Farm.new(dog, cat, duck, goose)
farm.give_sounds
