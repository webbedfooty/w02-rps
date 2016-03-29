#require "pry"
require_relative "lib/players.rb"
p1_record = 0
p2_record = 0
#######################################################
def rounds_to_play(n_rounds)
  while n_rounds % 2 == 0
    puts "Please select an odd number of rounds to play"
      n_rounds = gets.chomp.to_i
  end
  puts "Get ready - We'll play best of #{n_rounds}"
end
#######################################################


def player_one_throw

  if p1_throw == "r"
    puts "\nPlayer One threw Rock!"
  elsif p1_throw == "p"
    puts "\nPlayer One threw Paper!"
  else p1_throw == "s"
    puts "\nPlayer One threw Scissors!"
  end
  p1_throw
end
#######################################################
def player_two_throw

  if p2_throw == "r"
    puts "\nPlayer Two threw Rock!"
  elsif p2_throw == "p"
    puts "\nPlayer Two threw Paper!"
  else p2_throw == "s"
    puts "\nPlayer Two threw Scissors!"
  end
  p2_throw
end


#######################################################
x = 0
#############################################
def game(player_one, player_two, n_rounds)
  x = 0
  p1_record = 0
  p2_record = 0
  while x != n_rounds
    p1_throw = player_one_throw
    p2_throw = player_two_throw
    throw_score(p1_throw, p2_throw)
  x = x + 1
  end
end
player_one = Player.new
player_two = Player.new
puts "\nWelcome to Rock! Paper! Scissors!"
puts "\nPlayer One, please enter your name"
player_one.name = gets.chomp.capitalize
puts "\nPlayer Two, please enter your name"
player_two.name = gets.chomp.capitalize
Player.new
puts "How many rounds would you like to play? "
  n_rounds = gets.chomp.to_i
  rounds_to_play(n_rounds)
puts "\nA Reminder of the Rules"
puts "\nTo select Rock, enter r"
puts "To select Paper, enter p"
puts "To select Scissors, enter s"

def throw
  puts "\nPlayer One Ready?   One! Two! Three! Shoot!"
  player_one.throw = gets.chomp.downcase
  while player_one.throw != "r" &&
    player_one.throw != "p" &&
    player_one.throw != "s"
      puts "\nI don't know what that is - please try again"
    player_one.throw = gets.chomp.downcase
  end

  puts "\nPlayer Two Ready?   One! Two! Three! Shoot!"
  player_two.throw = gets.chomp.downcase
  while player_two.throw != "r" &&
    player_two.throw != "p" &&
    player_two.throw != "s"
      puts "\nI don't know what that is - please try again"
      player_two.throw = gets.chomp.downcase
  end
end

def throw_score(player_one.throw, player_two.throw)
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
  puts "The score is #{player_one.name} #{p1_record} to #{player_two.name} #{p2_record}"
  end
