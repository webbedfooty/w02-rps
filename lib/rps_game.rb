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
    p1_throw = "rock"
    puts "\nYou threw Rock!"
  elsif throw == "p"
    p1_throw = "paper"
    puts "\nYou threw Paper!"
  else throw == "s"
    p1_throw = "scissors"
    puts "\nYou threw Scissors!"
end
rps = ["rock", "paper", "scissors"]
computer_throw = rps.sample
