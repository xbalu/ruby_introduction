require "csv"

class Bestscores
  RANKS = 5
  attr_reader :scores, :filename
  attr_accessor :print_bestscores

  def initialize
    @scores = {}
    @filename = "bestscores.csv"
    @print_bestscores = false
    read_data(@filename)
  end

  def read_data(filepath)
    if File.exist?(filepath)
      i = 1
      CSV.foreach(filepath) do |row|
        @scores[i] = [row[0].to_i, row[1].to_i]
        i += 1
      end
    else
      (1..RANKS).each { |i| @scores[i] = [0, 0] }
    end
  end

  def check(game)
    return if game.points == 0
    game_length = (game.end_time - game.start_time).to_i

    (1..RANKS).each do |i|
      if game.points > @scores[i][0] || (game.points == @scores[i][0] && game_length < @scores[i][1])
        @scores.delete(RANKS)
        (RANKS - i).times { |j| @scores[RANKS - j] = @scores[RANKS - j - 1] }
        @scores[i] = [game.points, game_length]
        overwrite_bestscores(@filename)
        return
      end
    end
  end

  def overwrite_bestscores(filepath)
    CSV.open(filepath, "wb") do |csv|
      (1..RANKS).each do |i|
        csv << [@scores[i][0], @scores[i][1]]
      end
    end
  end
end
