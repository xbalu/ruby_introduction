class Food
  def eat
    puts "Munch, munch, very tasty"
    self.class
  end
end

class Orange < Food
  def blend
    puts "Blending"
  end
end
