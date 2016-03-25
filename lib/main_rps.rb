require "pry"
require_relative "players.rb"


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

def player_profile(player)
  puts "\n\n\nPlayer Profile:"
  puts "Player name: #{player.name}."
  puts "Shoots #{player.left_right}."
  puts "Representing #{player.country}."
end

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

def pick_a_player(players)
  #players = nil
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
  end
  player_profile(player)
end

choice = 5
players = []

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
