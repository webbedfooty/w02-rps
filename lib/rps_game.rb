# Basic: Rock Paper Scissors
puts "\nWelcome to Rock! Paper! Scissors!"

puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

computer_throw = ["rock", "paper", "scissors"]
throw = "O"
while throw != "R" || throw != "r" || throw != "P" || throw != "p" || throw != "S" || throw != "s"
  throw = gets.chomp

if throw == "R" || throw == "r"
    p1_throw = "rock"
    puts "\nYou threw Rock!"
    puts "The computer threw #{computer.sample}!"
  elsif throw == "P" || throw == "p"
    p1_throw = "paper"
    puts "\nYou threw Paper!"
    puts "The computer threw #{computer.sample}!"
  elsif throw == "S" || throw == "s"
    p1_throw = "scissors"
    puts "\nYou threw Scissors!"
    puts "The computer threw #{computer.sample}!"
  elsif
    puts "\nI don't know what that is, try again"
end
end
