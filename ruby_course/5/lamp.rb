class Lamp
  def turn_on
    puts "Iluminating.."
  end

  def turn_off
    puts "Going dark.."
  end

  def turn_on_and_off
    turn_on
    turn_off
  end
end

class BrokenLamp < Lamp
  def turn_on
    puts "The lamp is broken, oh no!"
  end
end

class MusicLamp < Lamp
  def turn_on
    super
    puts "Playing music"
  end
end

broken_lamp = BrokenLamp.new
broken_lamp.turn_on_and_off
music_lamp = MusicLamp.new
music_lamp.turn_on
