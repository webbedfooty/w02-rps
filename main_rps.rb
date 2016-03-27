#require "pry"
require_relative "lib/players.rb"
# require_relative "lib/rps_game.rb"
n_rounds = nil
choice = 5
#######################################################
def rounds_to_play(n_rounds)
  while n_rounds % 2 == 0
    puts "Please select an odd number of rounds to play"
      n_rounds = gets.chomp.to_i
  end
  puts "Get ready - We'll play best of #{n_rounds}"

end
#######################################################
def create_player
  name = gets.chomp.capitalize
  Player.new(name: name)
end
#######################################################
x = 0
#############################################
def game(player_one, player_two, n_rounds)

  def player_one_throw#(p1_throw)
    puts "\nPlayer One Ready?   One! Two! Three! Shoot!"
      p1_throw = gets.chomp.downcase
    while p1_throw != "r" && throw != "p" && throw != "s"
      puts "\nI don't know what that is - please try again"
      #p1_throw = gets.chomp.downcase
    end
    p1_throw
  end
#######################################################
  def player_two_throw
    puts "\nPlayer Two Ready?   One! Two! Three! Shoot!"
      p2_throw = gets.chomp.downcase
    while p2_throw != "r" && throw != "p" && throw != "s"
      puts "\nI don't know what that is - please try again"
      #p2_throw = gets.chomp.downcase
    end
    p2_throw
  end
#######################################################
  def throw_results(p1_throw, p2_throw)
    if p1_throw == "r"
      puts "\nPlayer One threw Rock!"
    elsif p1_throw == "p"
      puts "\nPlayer One threw Paper!"
    else p1_throw == "s"
      puts "\nPlayer One threw Scissors!"
    end

    if p2_throw == "r"
      puts "\nPlayer Two threw Rock!"
    elsif p2_throw == "p"
      puts "\nPlayer Two threw Paper!"
    else p2_throw == "s"
      puts "\nPlayer Two threw Scissors!"
    end
  end
#######################################################
  p1_record = 0
  p2_record = 0
  def throw_score(p1_throw, p2_throw)
    while p1_throw == p2_throw
      puts "It's a tie!"
      player_one_throw#(p1_throw)
      player_two_throw#(p2_throw)
    end
    if (p1_throw == "r" && p2_throw == "s") ||
      (p1_throw == "s" && p2_throw == "p") ||
      (p1_throw == "p" && p2_throw == "r")
      puts "Player One Wins!"
      p1_record += 1
    else (p1_throw == "r" && p2_throw == "p") ||
      (p1_throw == "s" && p2_throw == "r") ||
      (p1_throw == "p" && p2_throw == "s")
      puts "Player Two wins!"
      p2_record += 1
    end
  end

x = 0
  while x != n_rounds
    player_one_throw
    player_two_throw
    throw_results(p1_throw, p2_throw)
    throw_score(p1_throw, p2_throw)
    x+=1
    puts "The score is #{player_one} #{p1_record} to #{player_two} #{p2_record}"
  end

  if p1_record > p2_record
    puts "#{player_one} is the overall winner #{p1_record} to #{p2_record}"
  else
    puts "#{player_two} is the overall winner #{p2_record} to #{p1_record}"
  end
end

puts "\nWelcome to Rock! Paper! Scissors!"
player_one ="blank"
player_two = "blank"
players = []
puts "\nPlayer One, please enter your name"
players << create_player
  player_one
puts "\nPlayer Two, please enter your name"
players << create_player
  player_two
puts "How many rounds would you like to play? "
  n_rounds = gets.chomp.to_i
  rounds_to_play(n_rounds)
puts "\nA Reminder of the Rules"
puts "\nTo select Rock, enter r"
puts "To select Paper, enter p"
puts "To select Scissors, enter s"
game(player_one, player_two, n_rounds)
