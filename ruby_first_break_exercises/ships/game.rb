class Game
  NEIGHBOURS = [[0, -1], [0, 1], [-1, 0], [1, 0], [-1, -1], [1, -1], [-1, 1], [1, 1]]

  def initialize
    @board = {}
    @ships_location = {}
    @turns = 0
  end

  def start
    deploy_ships
    loop do
      print_board
      players_turn

      if no_ship_left
        exit_game
        break
      end
    end
  end

  def deploy_ships
    deploy_a_ship(4)
    deploy_a_ship(3, 2)
    deploy_a_ship(2, 3)
    deploy_a_ship(1, 4)
  end

  def deploy_a_ship(ship_parts, amount = 1)
    amount.times do
      xmod, ymod = 0, 0

      begin
        x, y = rand(10) + 1, rand(10) + 1
        can_deploy_a_ship = true

        case rand(4)
        when 0
          xmod, ymod = 0, -1
        when 1
          xmod, ymod = 1, 0
        when 2
          xmod, ymod = 0, 1
        when 3
          xmod, ymod = -1, 0
        end

        (ship_parts).times do |i|
          new_x, new_y = x + xmod * i, y + ymod * i

          can_deploy_a_ship = false if @board[[new_x, new_y]] != nil ||
          new_x > 10 || new_x < 1 || new_y > 10 || new_y < 1 ||
          any_ship_around(new_x, new_y) == true
        end

        if can_deploy_a_ship
          new_ship = Ship.new(ship_parts)

          (ship_parts).times do |i|
            new_x, new_y = x + xmod * i, y + ymod * i
            @board[[new_x, new_y]] = :ship
            @ships_location[[new_x, new_y]] = new_ship
            new_ship.ship_body[i] = [new_x, new_y]
          end
        end
      end while can_deploy_a_ship != true
    end
  end

  def any_ship_around(x, y)
    NEIGHBOURS.length.times do |i|
      if @board[[x + NEIGHBOURS[i][0], y + NEIGHBOURS[i][1]]] == :ship
        return true
      end
    end

    return false
  end

  def print_board
    puts "+---+---+---+---+---+---+---+---+---+---+---+"
    puts "|   | A | B | C | D | E | F | G | H | I | J |"
    puts "+---+---+---+---+---+---+---+---+---+---+---+"

    (1..10).each do |i|
      i != 10 ? (print "| #{i} |") : (print "|1 0|")
      (1..10).each do |j|
        mark = case @board[[i, j]]
        when nil, :ship then " "
        when :hit then "X"
        when :miss then "."
        end

        print " #{mark} |"
      end

      puts "\n+---+---+---+---+---+---+---+---+---+---+---+\n"
    end
  end

  def players_turn
    field = gets.chomp.upcase
    number = field[1..-1].to_i

    if field[/^[A-J]\d+$/] == nil || number > 10 || number < 1
      puts "Wrong coordinates. Enter it once again"
    else
      column = field[0].ord - 64

      if @board[[number, column]] != :hit && @board[[number, column]] != :miss
        check_field(number, column)
        @turns += 1
      else
        puts "You cannot choose this field"
      end
    end
  end

  def check_field(x, y)
    if @ships_location[[x, y]] != nil
      @board[[x, y]] = :hit

      if @ships_location[[x, y]].got_hit == 0
        puts "Ship burned!"
        mark_neighbours_with_dots(@ships_location[[x, y]].ship_body)
      else
        puts "Ship hit"
      end
    else
      @board[[x, y]] = :miss
      puts "Miss"
    end
  end

  def mark_neighbours_with_dots(locations)
    locations.length.times do |step|
      NEIGHBOURS.length.times do |i|
        temp_x = locations[step][0] + NEIGHBOURS[i][0]
        temp_y = locations[step][1] + NEIGHBOURS[i][1]

        if @board[[temp_x, temp_y]] == nil
          @board[[temp_x, temp_y]] = :miss
        end
      end
    end
  end

  def no_ship_left
    @board.length.times do |i|
      if @board.values[i] == :ship
        return false
      end
    end

    return true
  end

  def exit_game
    print_board
    puts "You have won the game in #{@turns} turns"
  end
end
