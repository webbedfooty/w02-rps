#require "pry"
require_relative "lib/players.rb"
player_one = Player.new
player_two = Player.new

player_one.wins = 0
player_two.wins = 0

x = 0
#######################################################
def rounds_to_play(n_rounds)
  while n_rounds % 2 == 0
    puts "Please select an odd number of rounds to play"
      n_rounds = gets.chomp.to_i
  end
  puts "Get ready - We'll play best of #{n_rounds}"
end
#######################################################
def throw
puts "\nPlayer One Ready?   One! Two! Three! Shoot!"
player_one.throw = gets.chomp.downcase
  while player_one.throw != "r" &&
    player_one.throw != "p" &&
    player_one.throw != "s"
    puts "\nI don't know what that is - please try again"
    player_one.throw = gets.chomp.downcase
  end
  p1_t = player_one.throw
  puts player_one_throw(p1_t)

puts "\nPlayer Two Ready?   One! Two! Three! Shoot!"
player_two.throw = gets.chomp.downcase
  while player_two.throw != "r" &&
    player_two.throw != "p" &&
    player_two.throw != "s"
    puts "\nI don't know what that is - please try again"
    player_two.throw = gets.chomp.downcase
  end
  p2_t = player_two.throw
  puts player_two_throw(p2_t)
end
#######################################################
def player_one_throw(p1_t)
  if p1_t == "r"
    puts "\nPlayer One threw Rock!"
  elsif p1_t == "p"
    puts "\nPlayer One threw Paper!"
  else p1_t == "s"
    puts "\nPlayer One threw Scissors!"
  end
end
#######################################################
def player_two_throw(p2_t)
  if p2_t == "r"
    puts "\nPlayer Two threw Rock!"
  elsif p2_t == "p"
    puts "\nPlayer Two threw Paper!"
  else p2_t == "s"
    puts "\nPlayer Two threw Scissors!"
  end
end
#######################################################
puts "\nWelcome to Rock! Paper! Scissors!"
puts "\nPlayer One, please enter your name"
player_one.name = gets.chomp.capitalize
puts "\nPlayer Two, please enter your name"
player_two.name = gets.chomp.capitalize

puts "How many rounds would you like to play? "
  n_rounds = gets.chomp.to_i
  rounds_to_play(n_rounds)
puts "\nA Reminder of the Rules"
puts "\nTo select Rock, enter r"
puts "To select Paper, enter p"
puts "To select Scissors, enter s"

while x != n_rounds
  throw

    if player_one.throw == player_two.throw
      puts "It's a tie!"
        throw
    elsif
      (player_one.throw == "r" && player_two.throw == "s") ||
      (player_one.throw == "s" && player_two.throw == "p") ||
      (player_one.throw == "p" && player_two.throw == "r")
        puts "Player One Wins!"
          player_one.wins += 1
    else
      (player_one.throw == "r" && player_two.throw == "p") ||
      (player_one.throw == "s" && player_two.throw == "r") ||
      (player_one.throw == "p" && player_two.throw == "s")
        puts "Player Two wins!"
          player_two.wins += 1
    end
puts "The score is #{player_one.name} #{player_one.wins}
  to
  #{player_two.name} #{player_two.wins}"
  x += 1
  puts "Get Ready for Round #{x}"
end
