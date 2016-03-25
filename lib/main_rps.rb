require "pry"
require_relative "players.rb"


def create_player
  puts "\n\nWelcome to Rock! Paper! Scissors!"
  puts "\n\n Let's create your RPS Player "
  print "Please enter your name "
  name = gets.chomp.capitalize

  print "Are you left-handed or right-handed? "
  left_right = gets.chomp.capitalize

  print "Which country do you represent? "
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
