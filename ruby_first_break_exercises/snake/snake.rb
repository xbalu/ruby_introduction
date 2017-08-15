class Snake
  attr_reader :parts
  attr_accessor :body_coords, :direction

  def initialize
    set_variables
  end

  def set_variables
    @body_coords = {}
    @parts = 5
    @direction = :right
  end

  def put_snake_on_the_board(game)
    x = GAME_ROWS / 2
    @parts.times do |i|
      y = (GAME_COLS / 2) - i
      @body_coords[i] = [x, y]
      game.game_fields[[x, y]] = :snake
    end
  end

  def eat_food(game)
    last_part_x = @body_coords[@parts - 1][0]
    last_part_y = @body_coords[@parts - 1][1]
    @body_coords[@parts] = [last_part_x, last_part_y]
    @parts += 1
    game.points += 1
    game.game_fields[[last_part_x, last_part_y]] = :snake
  end

  def kill(game)
    set_variables
    game.lives -= 1
    game.game_fields = {}
    put_snake_on_the_board(game)
  end
end
