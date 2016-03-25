# Basic: Rock Paper Scissors
puts "\nWelcome to Rock! Paper! Scissors!"
puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

computer_throw = ["rock", "paper", "scissors"]
throw = gets.chomp.downcase
if throw == "r"
    p1_throw = "rock"
    puts "\nYou threw Rock!"
  elsif throw == "p"
    p1_throw = "paper"
    puts "\nYou threw Paper!"
  elsif throw == "s"
    p1_throw = "scissors"
    puts "\nYou threw Scissors!"
  else
    puts "\nI don't know what that is, try again"
    throw = gets.chomp.downcase
end
