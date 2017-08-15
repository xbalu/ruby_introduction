require "time"

class Game
  attr_reader :game_started, :game_speed, :start_time, :end_time, :last_eat
  attr_accessor :game_fields, :lives, :points, :credits

  def initialize
    @game_started = false
    @game_speed = 1
    @game_fields = {}
    @end_time = 0
    @credits = false
  end

  def start_game(game, snake)
    @game_started = true
    @start_time = Time.now
    @lives = 3
    @points = 0
    @last_eat = 0
    snake.put_snake_on_the_board(game)
  end

  def game_speed_change
    @game_speed = 0 if @game_speed == 5
    @game_speed += 1
    return nil
  end

  def forward_game_started(game_window, info_window, snake)
    food_check
    move_snake(game_window, info_window, snake)
    yummy_msg_lifetime_check(info_window)
    print_game_info(info_window, self, snake)
    print_game_board(game_window)
    check_for_end_game(game_window, info_window)
    sleep (0.3 - @game_speed * 0.05)
  end

  def food_check
    @game_fields.length.times do |i|
      if @game_fields.values[i] == :food
        return
      end
    end

    (1..1000).each do
      row = 1 + rand(GAME_ROWS - 2)
      col = 1 + rand(GAME_COLS - 2)

      if (@game_fields[[row, col]] != :snake)
        @game_fields[[row, col]] = :food
        return
      end
    end
  end

  def move_snake(game_window, info_window, snake)
    rowmod, colmod = 0, 0

    case snake.direction
    when :up
      rowmod, colmod = -1, 0
    when :right
      rowmod, colmod = 0, 1
    when :down
      rowmod, colmod = 1, 0
    when :left
      rowmod, colmod = 0, -1
    end

    @game_fields[[snake.body_coords[snake.parts - 1][0], snake.body_coords[snake.parts - 1][1]]] = :nil

    snake.parts.times do |i|
      part = snake.parts - 1 - i
      next_part = part - 1

      if part > 0
        snake.body_coords[part] = [snake.body_coords[next_part][0], snake.body_coords[next_part][1]]
      else
        snake.body_coords[0] = [(snake.body_coords[0][0] + rowmod), (snake.body_coords[0][1] + colmod)]
      end
    end

    head_x = snake.body_coords[0][0]
    head_y = snake.body_coords[0][1]
    food_and_wall_check(snake, head_x, head_y, game_window, info_window)
  end

  def food_and_wall_check(snake, head_x, head_y, game_window, info_window)
    if head_x == 0 || head_x == (GAME_ROWS - 1) || head_y == 0 || head_y == (GAME_COLS - 1) ||
      @game_fields[[head_x, head_y]] == :snake

      game_window.erase
      snake.kill(self)
    else
      if @game_fields[[head_x, head_y]] == :food
        snake.eat_food(self)
        print_yummy_msg(info_window)
      end
      @game_fields[[head_x, head_y]] = :snake
    end
  end

  def print_yummy_msg(info_window)
    info_window.setpos(9, 2)
    info_window << "Yummy!"
    @last_eat = Time.now
  end

  def print_game_board(game_window)
    game_window.color_set(1)
    game_window.box("#", "#", "#")

    (1..(GAME_ROWS - 2)).each do |i|
      (1..(GAME_COLS - 2)).each do |j|
        game_window.setpos(i, j)
        case @game_fields[[i, j]]
        when :food
          game_window.addstr("*")
        when :snake
          game_window.addstr("@")
        when :nil
          game_window.addstr(" ")
        end
      end
    end
    game_window.refresh
  end

  def yummy_msg_lifetime_check(info_window)
    if (Time.now - @last_eat).to_f > 1.0
      info_window.setpos(9, 1)
      info_window << "%-7s" % ""
    end
  end

  def check_for_end_game(game_window, info_window)
    if @lives == 0
      @game_started = false
      @end_time = Time.now
      game_window.erase
      game_window.refresh
      info_window.erase
      info_window.refresh
    end
  end
end
