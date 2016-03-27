#require "pry"
require_relative "lib/players.rb"
# require_relative "lib/rps_game.rb"

choice = 5
players = []
#######################################################
def rounds_to_play(n_rounds)
  while n_rounds % 2 == 0
    puts "Please select an odd number of rounds to play"
  else n_rounds % 2 != 0
    puts "Get ready - We'll play best of #{n_rounds}"
  end
end
#######################################################
def create_player
  print "\nPlease enter your name "
  name = gets.chomp.capitalize

  Player.new(name: name)
end
#######################################################

while choice != 0
  puts "\nWelcome to Rock! Paper! Scissors!"
  puts "\nHere are your options:\n1. Create New Player One \n2. Create New Player Two
  3. Select number of rounds to play \n0. Exit"
  print "\nWhat is your choice? "
  choice = gets.chomp.to_i

  if choice == 1
    player_one << create_player
  elsif choice == 2
    player_two << create_player
  elsif choice == 3
    puts "How many rounds would you like to play? "
    n_rounds = gets.chomp.to_i
    rounds_to_play(n_rounds)
  elsif choice == 0
    puts "\nGoodbye!"
  else
    puts "\nSorry! Not a valid input"
  end
end

puts "\nA Reminder of the Rules"
puts "\nTo select Rock, enter r"
puts "To select Paper, enter p"
puts "To select Scissors, enter s"

def player_one_throw(p1_throw)
  puts "\nPlayer One Ready?"
  puts "\nOne! Two! Three! Shoot!"
    p1_throw = gets.chomp.downcase
  while p1_throw != "r" && throw != "p" && throw != "s"
    puts "\nI don't know what that is - please try again"
    p1_throw = gets.chomp.downcase
  end
end

def player_two_throw(p2_throw)
puts "\nPlayer Two Ready?"
puts "\nOne! Two! Three! Shoot!"
p2_throw = gets.chomp.downcase
while p2_throw != "r" && throw != "p" && throw != "s"
  puts "\nI don't know what that is - please try again"
  p2_throw = gets.chomp.downcase
end

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
def throw_score
  while p1_throw == p2_throw
    puts "It's a tie!"
    player_one_throw(p1_throw)
    player_two_throw(p2_throw)
  elsif (p1_throw == "r" && p2_throw == "s") ||
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

def game(n_rounds)
  x = 0
  if n_rounds == nil
    rounds_to_play(n_rounds)
  end
  while x != n_rounds
    throw_score(p1_throw, p2_throw)
    x+=1
    puts "The score is #{player_one} #{p1_record} to #{player_two} #{p2_record}"
  else
    if p1_record > p2_record
      puts "#{player_one} is the overall winner #{p1_record} to #{p2_record}"
    else
      puts "#{player_two} is the overall winner #{p2_record} to #{p1_record}"
  end
end
