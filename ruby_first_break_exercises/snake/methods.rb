MENU_ROWS = 14
MENU_COLS = 30
GAME_ROWS = 25
GAME_COLS = 40
INFO_ROWS = 12
INFO_COLS = 15

def initialize_curses_screen
  Curses.init_screen
  Curses.start_color
  Curses.init_pair(1, Curses::COLOR_YELLOW, 0)
  Curses.init_pair(2, Curses::COLOR_CYAN, 0)
  Curses.curs_set(0)
  Curses.noecho
end

def initialize_menu_screen
  top = (Curses.lines - MENU_ROWS) / 2
  left = (Curses.cols - MENU_COLS) / 2 + 8
  window = Curses::Window.new(MENU_ROWS, MENU_COLS, top, left)
  window.keypad = true
  window.nodelay = true
  window
end

def initialize_game_screen
  top = (Curses.lines - GAME_ROWS) / 2
  left = (Curses.cols - GAME_COLS) / 2
  window = Curses::Window.new(GAME_ROWS, GAME_COLS, top, left)
  window.keypad = true
  window.nodelay = true
  window
end

def initialize_info_screen
  top = (Curses.lines - INFO_ROWS) / 2
  window = Curses::Window.new(INFO_ROWS, INFO_COLS, top, 10)
  window
end

def check_for_pressed_key(menu_window, game_window, game, snake, menu_arrow, bestscores)
  case menu_window.getch
  when "q"
    if bestscores.print_bestscores == true
      bestscores.print_bestscores = false
      menu_window.erase
      3
    elsif game.credits == true
      game.credits = false
      menu_window.erase
      4
    end
  when 10 # ENTER
    if menu_arrow == 1
      game.start_game(game, snake)
    elsif menu_arrow == 2
      game.game_speed_change
    elsif menu_arrow == 3
      bestscores.print_bestscores = true
    elsif menu_arrow == 4
      game.credits = true
    elsif menu_arrow == 5
      exit
    end
  when Curses::Key::LEFT
    if game.game_started && (snake.direction == :up || snake.direction == :down)
      snake.direction = :left
    end
  when Curses::Key::RIGHT
    if game.game_started && (snake.direction == :up || snake.direction == :down)
      snake.direction = :right
    end
  when Curses::Key::UP
    if game.game_started && (snake.direction == :left || snake.direction == :right)
      snake.direction = :up
    elsif menu_arrow > 1
      menu_arrow -= 1
    end
  when Curses::Key::DOWN
    if game.game_started && (snake.direction == :left || snake.direction == :right)
      snake.direction = :down
    elsif menu_arrow < 5
      menu_arrow += 1
    end
  end
end

def print_menu(game, window, menu_arrow, bestscores)
  window.color_set(1)
  window.box(" ", " ", " ")
  window.setpos(2, 0)
  window.erase
  
  if bestscores.print_bestscores == true
    window << "%-6s %-10s %-10s\n\n" % ["No", "Points", "Time"]
    bestscores.scores.length.times  do |i|
      points = bestscores.scores[i + 1][0]
      time = bestscores.scores[i + 1][1]
      window << "%-6d %-10d %-10d\n" % [i + 1, points, time]
    end
    window << "\n%-2sPress \'q\' to exit" % ""
  elsif game.credits == true
    window << "This game..\n has been made..\n  just..\n   to learn..\n    Ruby!\n\n%-5sxbalu" % ""
    window << "\n\nYou can\'t exit, sorry"
    4.times { window << "\n." }
    window << "\nJust kidding, type \'q\'"
  else
    window << " Snake v1.0\n\n"
    window << "%s 1. NEW GAME\n" % (menu_arrow == 1 ? "=> " : "")
    window << "%s 2. GAME SPEED: x#{game.game_speed}\n" % (menu_arrow == 2 ? "=> " : "")
    window << "%s 3. BEST SCORES\n" % (menu_arrow == 3 ? "=> " : "")
    window << "%s 4. CREDITS\n" % (menu_arrow == 4 ? "=> " : "")
    window << "%s 5. EXIT\n" % (menu_arrow == 5 ? "=> " : "")
  end
  window.refresh
end

def print_game_info(window, game, snake)
  window.color_set(2)
  window.box(" ", " ", " ")
  window.setpos(2, 0)
  window << "%-9s#{snake.parts}\n" % "Length:"
  window << "%-9s#{game.points}\n" % "Points:"
  window << "%-9s#{game.lives}\n" % "Lives:"
  window << "%-9s#{(Time.now - game.start_time).to_i}\n" % "Time:"
  window << "%-9sx#{game.game_speed}\n" % "Speed:"
  window.refresh
end
