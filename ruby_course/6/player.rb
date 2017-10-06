class Player
  include Comparable

  attr_reader :score

  def initialize(score)
    @score = score
  end

  def <=>(other)
    @score <=> other.score
  end

  def to_s
    "Player[score:#{score}]"
  end

  def inspect
    to_s
  end
end

p1 = Player.new(10)
p2 = Player.new(20)

puts p1 < p2
array = [Player.new(30), Player.new(40), Player.new(2), Player.new(15)]
puts array.sort
#puts array.sort.map { |player| "Player[score:#{player.score.to_s}]" }
