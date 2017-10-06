class Blender
  def initialize
    puts "Blender initalized"
  end

  def blend(time, *ingredients)
    puts "Making juice from #{ingredients.join(", ")} for #{time} secs"
  end

  def blend2(duration = 20, fruit: "apple", vegetable: "carrot")
    puts "Making juice from #{fruit} and #{vegetable} for #{duration} secs"
  end
end

Blender.new.blend(20, "apple", "banana", "orange", "carrots")
