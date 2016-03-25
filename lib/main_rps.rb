require "pry"
require_relative "lib/players.rb"


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
