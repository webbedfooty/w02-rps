#require "pry"
#require_relative "players.rb"
require_relative "lib/rps_game.rb"

choice = 5
players = []
#######################################################
# Menu process to work with data collected or to exit
#
# + Must enter a valid number within the range to proceed
#
#
while choice != 0
  puts "\nWelcome to Rock! Paper! Scissors!"
  puts "\nHere are your options:\n1. Create New Player One \n2. Create New
  Player Two \n3. Select number of rounds to play \n0. Exit"
  print "\nWhat is your choice? "
  choice = gets.chomp.to_i

  if choice == 1
    players << create_player
    player_profile(players.last)
  elsif choice == 2
    players << create_player
    player_profile(players.last)
  elsif choice == 3
    n_rounds = gets.chomp.to_i
    rounds_to_play(n_rounds)
  elsif choice == 0
    puts "\nGoodbye!"
  else
    puts "\nSorry! Not a valid input"
  end
end

def rounds_to_play(n_rounds)
  if n_rounds == 1
    puts "You've selected to play just 1 round"
  elsif n_rounds % 2 == 0
    puts "Please select an odd number of rounds to play"
  elsif n_rounds % 2 != 0
    puts "Get ready - We'll play best of #{n_rounds}"
  end
end


#######################################################
# Method for creating a player profile utilizing player class
#
# + variables to collect info are NAME, LEFT_RIGHT handed, and COUNTRY
#
#
def create_player
  puts "\nLet's create your RPS Player "
  print "\nPlease enter your name "
  name = gets.chomp.capitalize

  print "\nAre you left-handed or right-handed? "
  left_right = gets.chomp.capitalize


  Player.new(name: name, left_right: left_right)
end
#######################################################
# Method to print Player Profile
#
# + Utilizes variable collected in create_player method
#
#
def player_profile(player)
  puts "\n\n\nPlayer Profile:"
  puts "Player name: #{player.name}."
  puts "Shoots #{player.left_right}."

end
#######################################################
