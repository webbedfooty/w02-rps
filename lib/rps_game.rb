# Phase 0: Rock Paper Scissors
# 1 round only, person vs. computer
# result determined randomly and printed at end
#
# Step 0: Basic instructions
puts "\nWelcome to Rock! Paper! Scissors!"
puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"
#######################################################
# Step 1: Takes input from live player and downcases the entry for consistency
# Input is registered and printed; incorrect entries result in repeat request
throw = gets.chomp.downcase
while throw != "r" && throw != "p" && throw != "s"
  puts "\nI don't know what that is - please try again"
  throw = gets.chomp.downcase
end
if throw == "r"
    puts "\nYou threw Rock!"
  elsif throw == "p"
    puts "\nYou threw Paper!"
  else throw == "s"
    puts "\nYou threw Scissors!"
end
#######################################################
# Step 2: registers randomly selected play for computer and prints result
rps = ["r", "p", "s"]
computer_throw = rps.sample

if computer_throw == "r"
    puts "\nThe Computer threw Rock!"
  elsif computer_throw == "p"
    puts "\nThe Computer threw Paper!"
  else computer_throw == "s"
    puts "\nThe Computer threw Scissors!"
end
#######################################################
# Step 3: Compares players input to computer entry and prints result

if computer_throw == throw
    puts "It's a tie!"
  elsif (computer_throw = "r" && throw = "p") ||
    (computer_throw = "s" && throw = "r") ||
    (computer_throw = "p" && throw = "s")
    puts "You win!"
  else (computer_throw = "r" && throw = "s") ||
    (computer_throw = "s" && throw = "p") ||
    (computer_throw = "p" && throw = "r")
    puts "You lose!"
end
