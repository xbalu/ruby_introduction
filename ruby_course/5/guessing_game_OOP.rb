class WinningNumber
  attr_reader :tries

  def initialize
    @number = rand(100)
    @tries = 0
  end

  def guess(number)
    tries_increment
    if @number < number
      :less
    elsif @number > number
      :more
    else
      :equal
    end
  end

  private

  def tries_increment
    @tries += 1
  end
end

class Game
  def initialize
    @winning_number = WinningNumber.new
  end

  def game_loop
    loop do
      guess_number = gets.to_i

      case @winning_number.guess(guess_number)
      when :equal
        puts "You won! Tries: #{@winning_number.tries}"
        break
      when :less
        puts "Less"
      when :more
        puts "More"
      end
    end
  end
end

Game.new.game_loop
