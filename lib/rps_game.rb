# Phase 0: Rock Paper Scissors
# 1 round only, person vs. computer
# result determined randomly and printed at end

require "pry"
#require_relative "players.rb"
#require_relative "main_rps.rb"
# Step 0: Basic instructions
puts "\nA Reminder of the Rules"
puts "\nTo select Rock, enter r"
puts "To select Paper, enter p"
puts "To select Scissors, enter s"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

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
