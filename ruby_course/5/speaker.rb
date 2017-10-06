class Speaker
  def play(trackname)
    puts "Playing '#{trackname}'"
  end
end

class BluetoothSpeaker < Speaker
  def play(trackname)
    puts "Streaming.."
    super
  end
end

BluetoothSpeaker.new.play("Cake by the ocean")
