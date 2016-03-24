# Basic: Rock Paper Scissors
puts "\n Welcome to"
puts "Rock!"
puts "Paper!"
puts "Scissors!\n"
puts "To select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S\n"
puts "Player One Ready?\n"
puts "One! Two! Three! Shoot!"
throw = gets.chomp

if throw == "R" || throw == "r"
  puts "You threw Rock!"
elsif throw == "P" || throw == "p"
  puts "You threw Paper!"
elsif throw == "S" || throw == "s"
  puts "You threw Scissors!"
else
  puts "I don't know what that is, try again"
end
