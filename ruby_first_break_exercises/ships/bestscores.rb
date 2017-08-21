require "csv"

class Bestscores
  RANKS = 5
  attr_reader :scores

  def initialize
    @scores = {}
    @filename = "scores.csv"
    read_data(@filename)
  end

  def read_data(filepath)
    if File.exist?(filepath)
      i = 1
      CSV.foreach(filepath) do |row|
        @scores[i] = [row[0].to_i, row[1]]
        i += 1
      end
    else
      (1..RANKS).each { |i| @scores[i] = [0, ""] }
    end
  end

  def check(points)
    (1..RANKS).each do |i|
      if -points > -@scores[i][0] || @scores[i][0] == 0
        @scores.delete(RANKS)
        (RANKS - i).times { |j| @scores[RANKS - j] = @scores[RANKS - j - 1] }
        puts "** New bestscore no. #{i} **\nEnter your name: "
        @scores[i] = [points, gets.chomp]
        overwrite_bestscores(@filename)
        print
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

  def print
    str = ""
    str << "\nBestscores\n%-6s %-10s %-10s\n" % ["No", "Misses", "Name"]
    @scores.length.times  do |i|
      points = @scores[i + 1][0]
      name = @scores[i + 1][1]
      str << "%-6d %-10d %-10s\n" % [i + 1, points, name]
    end
    puts "#{str}\n"
  end
end
