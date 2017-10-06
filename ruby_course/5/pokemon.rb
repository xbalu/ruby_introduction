class Pokemon
  attr_reader :name, :hello_msg, :health, :attack_min, :attack_max, :defence, :element
  attr_accessor :current_health
  @@pokemons = []

  def initialize(name, hello_msg, health, attack_min, attack_max, defence, element)
    @name = name
    @hello_msg = hello_msg
    @health = health
    @attack_min = attack_min
    @attack_max = attack_max
    @defence = defence
    @element = element
  end

  def info
    print "%-20s" % @name
    print "HP: %-8d" % @health
    print "ATK: %-2d" % @attack_min
    print " - %-7d" % @attack_max
    print "DEF: %-5d" % @defence
    print "Element: %-10s\n" % @element
  end

  def start_fight
    @current_health = @health
    puts "#{@name} is shouting: '#{@hello_msg}'"
    info
  end

  def attack(attacker, victim)
    bonus = (elements_bonus(attacker, victim) == true ? ((attacker.attack_min + attacker.attack_max) / 2) : 0).to_i
    (@attack_min + rand(@attack_max - @attack_min + 1)) + bonus
  end

  def elements_bonus(attacker, victim)
    case attacker.element
    when :fire
      true if victim.element == :earth
    when :earth
      true if victim.element == :wind
    when :wind
      true if victim.element == :lighting
    when :lighting
      true if victim.element == :water
    when :water
      true if victim.element == :fire
    else
      false
    end
  end

  def got_hit(attack_value)
    health_points = (attack_value - (@defence * 0.6).to_i)
    health_points = 1 if health_points <= 0

    if rand(10) == 1
      print "*CRITICAL* "
      health_points *= 2
    end

    @current_health -= health_points
    health_points
  end

  def is_pokemon_dead(enemy)
    if @current_health <= 0
      puts "\n#{@name} just died! The fight is over, #{enemy.name} has won the battle"
      true
    end
  end

  def self.summon_pokemons
    @@pokemons << Pokemon.new("Pikachu", "Pika-pika-pika-chuu!", 100, 16, 25, 10, :lighting)
    @@pokemons << Pokemon.new("Firebird", "Arr, arr, arrhh!", 90, 20, 28, 6, :fire)
    @@pokemons << Pokemon.new("The Water King", "I will shrink your boat!", 130, 11, 32, 12, :water)
    @@pokemons << Pokemon.new("Mud monster", "Gimme something to play!", 150, 12, 18, 15, :earth)
    @@pokemons << Pokemon.new("Dark cloud", "It is going to rain!", 70, 16, 21, 25, :wind)
    @@pokemons << Pokemon.new("Bulbozaur", "My shell is tough as a rock!", 125, 7, 18, 20, :earth)
    @@pokemons << Pokemon.new("Ghost", "Don't be afraid of my transparency!", 70, 22, 30, 8, :wind)
    @@pokemons << Pokemon.new("Fabulous Dragon", "Give a shot my fire breath!", 200, 20, 28, 20, :fire)
    @@pokemons << Pokemon.new("Electricity ball", "Let me load your batteries!", 105, 14, 22, 5, :lighting)
    @@pokemons << Pokemon.new("Jellyfish", "Touch my tentacle!", 60, 30, 40, 11, :water)
    @@pokemons << Pokemon.new("Lord of Death", "Don't even try to pray, you will die.", 200, 45, 65, 0, :death)
  end

  def self.print_pokemons_list
    (@@pokemons.length).times do |i|
      print "%-3d " % (i + 1)
      @@pokemons[i].info
    end
  end

  def self.pokemons
    @@pokemons
  end
end

class Arena
  attr_reader :arena_name, :arena_location
  attr_accessor :turns

  def initialize(arena_name, arena_location)
    @arena_name = arena_name
    @arena_location = arena_location
    @turns = 1
  end

  def self.initialize_battle(arena)
    puts "Choose pokemons to fight: "
    pokemon1 = gets.to_i - 1
    pokemon2 = gets.to_i - 1
    puts ""
    length = Pokemon.pokemons.length
    pokemon1 = rand(length) if (pokemon1 < 0 || pokemon1 > length)
    pokemon2 = rand(length) if (pokemon2 < 0 || pokemon2 > length)
    arena.engage_battle(Pokemon.pokemons[pokemon1], Pokemon.pokemons[pokemon2])
  end

  def engage_battle(pokemon1, pokemon2)
    fight(pokemon1, pokemon2)
    @turns = 1
  end

  def fight(pokemon1, pokemon2)
    pokemon1.start_fight
    pokemon2.start_fight
    puts "\nPress ENTER to start the fight on '#{@arena_name}' at '#{@arena_location}'!"

    loop do
      gets
      puts "Starting turn no #{@turns}.."
      pokemon_turn(pokemon1, pokemon2)
      break if pokemon2.is_pokemon_dead(pokemon1)

      pokemon_turn(pokemon2, pokemon1)
      break if pokemon1.is_pokemon_dead(pokemon2)

      @turns += 1
    end
  end

  def pokemon_turn(attacker, victim)
    attack_value = attacker.attack(attacker, victim)
    health_taken = victim.got_hit(attack_value)
    puts "#{attacker.name} attacked #{victim.name} for #{health_taken} HP and left him #{victim.current_health > 0 ? victim.current_health : 0} HP!"
  end

  def self.ask_for_another_game
    puts "Do you want to play again? Type 'yes'/'no'"

    if gets.chomp.include? "no"
      puts "Please come back soon and have a nice day!"
      exit(0)
    end

    puts ""
  end
end

Pokemon.summon_pokemons
arena = Arena.new("Pokemons stadium", "The sky")

loop do
  Pokemon.print_pokemons_list
  Arena.initialize_battle(arena)
  Arena.ask_for_another_game
end
