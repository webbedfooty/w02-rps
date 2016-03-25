# Basic: Rock Paper Scissors
puts "\nWelcome to Rock! Paper! Scissors!"
puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

throw = gets.chomp.downcase
while throw != "r" && throw != "p" && throw != "s"
  puts "\nI don't know what that is, try again"
  throw = gets.chomp.downcase
end

if throw == "r"
    puts "\nYou threw Rock!"
  elsif throw == "p"
    puts "\nYou threw Paper!"
  else throw == "s"
    puts "\nYou threw Scissors!"
end

rps = ["r", "p", "s"]
computer_throw = rps.sample

if computer_throw == "r"
    puts "\nThe Computer threw Rock!"
  elsif computer_throw == "p"
    puts "\nThe Computer threw Paper!"
  else computer_throw == "s"
    puts "\nThe Computer threw Scissors!"
end

if computer_throw == throw
    puts "It's a tie!"
  elsif computer_throw = "r" && throw = "p"
    puts "You win!"
  elsif computer_throw = "s" && throw = "r"
    puts "You win!"
  elsif computer_throw = "p" && throw = "s"
    puts "You win!"
  elsif computer_throw = "r" && throw = "s"
    puts "You lose!"
  elsif computer_throw = "s" && throw = "p"
    puts "You lose!"
  else computer_throw = "p" && throw = "r"
    puts "You lose!"
end
