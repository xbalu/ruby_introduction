require "curses"
require "./bestscores.rb"
require "./game.rb"
require "./methods.rb"
require "./snake.rb"

initialize_curses_screen
menu_window = initialize_menu_screen
game_window = initialize_game_screen
info_window = initialize_info_screen
bestscores  = Bestscores.new
game        = Game.new
snake       = Snake.new
menu_arrow  = 1

loop do
  value = check_for_pressed_key(menu_window, game_window, game, snake, menu_arrow, bestscores)
  menu_arrow = value if value.is_a?(Integer)

  case game.game_started
  when false
    print_menu(game, menu_window, menu_arrow, bestscores)
    game_window.getstr
    sleep 0.05
  when true
    game.forward_game_started(game_window, info_window, snake)
    if !game.game_started # the game has just ended, the state has been changed in the forward_game_started
      bestscores.check(game)
      menu_arrow = 1
    end
  end
end
