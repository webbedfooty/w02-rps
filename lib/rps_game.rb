# Basic: Rock Paper Scissors
puts "\nWelcome to Rock! Paper! Scissors!"

puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

throw = "O"
while throw != "R" || throw != "r" || throw != "P" || throw != "p" || throw != "S" || throw != "s"
  throw = gets.chomp

if throw == "R" || throw == "r"
    puts "\nYou threw Rock!"
  elsif throw == "P" || throw == "p"
    puts "\nYou threw Paper!"
  elsif throw == "S" || throw == "s"
    puts "\nYou threw Scissors!"
  elsif
    puts "\nI don't know what that is, try again"
end
end
