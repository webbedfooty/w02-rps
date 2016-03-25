require "pry"
require_relative "players.rb"

#######################################################
# Method for creating a player profile utilizing player class
#
# + variables to collect info are NAME, LEFT_RIGHT handed, and COUNTRY
#
#
def create_player
  puts "\nWelcome to Rock! Paper! Scissors!"
  puts "\nLet's create your RPS Player "
  print "\nPlease enter your name "
  name = gets.chomp.capitalize

  print "\nAre you left-handed or right-handed? "
  left_right = gets.chomp.capitalize

  print "\nWhich country do you represent? "
  country = gets.chomp.capitalize

  Player.new(name: name, left_right: left_right, country: country)
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
  puts "Representing #{player.country}."
end
#######################################################
# Method to list out players after they are created
# Indicates that there are no players if none exist
#
# + Uses the DO method to create the list
#
#
def list_players(arr)
  puts "RPS League Master Player List"
  if !arr.empty?

  puts "There are #{arr.length} player(s) in the League."
    arr.each do |player|
      player_profile(player)
      end
  else
    puts "We don't have any registered players yet."
  end
end
#######################################################
# Method to select a player from a list that is generated
# Numbers are assigned to each player in the order entered
# Indicates that there are no players if none exist
#
# + Must enter a valid number within the range
#
#
players = nil
def pick_a_player(players)
  if !players.empty?
    players.each_with_index do |player, index|
      puts "#{index}: #{player.name}"
    end

    print "Please select your player "
    choice = gets.chomp.to_i

    while choice < 0 || choice >= players.length
      puts "Not a valid choice. Let's try again."
      print "Please select your player "
      choice = gets.chomp.to_i
    end
    player = players[choice]
    player_profile(player)
  else
    puts "We don't have any registered players yet."
  end
end

choice = 5
players = []
#######################################################
# Menu process to work with data collected or to exit
#
# + Must enter a valid number within the range to proceed
#
#
while choice != 0
  puts "\nHere are your options:\n1. Create New Player\n2. List of Players \n3. Review a specific Player \n0. Exit"
  print "\nWhat is your choice? "
  choice = gets.chomp.to_i

  if choice == 1
    players << create_player
    player_profile(players.last)
  elsif choice == 2
    list_players(players)
  elsif choice == 3
    pick_a_player(players)
  elsif choice == 0
    puts "\nGoodbye!"
  else
    puts "\nSorry! Not a valid input"
  end
end
