class Dog
  @@dogs = 0

  #attr_reader :name, :breed
  #attr_writer :name, :breed
  attr_accessor :name, :breed

  def initialize(name = "unnamed", breed = "unknown")
    @name = name
    @breed = breed
    @@dogs += 1
  end

  def say_hello(other_dog)
    other_dog.sniff
  end

  def self.dogs
    @@dogs
  end

  def name=(name)
    if name.nil?
      raise ArgumentError, "empty value for name"
    end

    @name = name
  end

  def bark
    puts "Bark, bark!"
    self.bark_name
    self.bark_breed
  end

  private

  def bark_name
    puts "My name is #{@name}"
  end

  def bark_breed
    puts "My breed is #{@breed}"
  end

  protected

  def sniff
    puts "Sniffing"
  end
end
