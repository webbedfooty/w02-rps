# Basic: Rock Paper Scissors
puts "\nWelcome to Rock! Paper! Scissors!"

puts "\nTo select Rock, enter R"
puts "To select Paper, enter P"
puts "To select Scissors, enter S"
puts "\nPlayer One Ready?"
puts "\nOne! Two! Three! Shoot!"

computer_throw = ["rock", "paper", "scissors"]
throw = "J"
def player1_throw(throw)
while throw != "R" || throw != "r" || throw != "P" || throw != "p" || throw != "S" || throw != "s"
  throw = gets.chomp
if throw == "R" || throw == "r"
    p1_throw = "rock"
    puts "\nYou threw Rock!"
  elsif throw == "P" || throw == "p"
    p1_throw = "paper"
    puts "\nYou threw Paper!"
  elsif throw == "S" || throw == "s"
    p1_throw = "scissors"
    puts "\nYou threw Scissors!"
  else
    puts "\nI don't know what that is, try again"
end
player1_throw(throw)
end

def throw_outcome(p1_throw, cpu_throw)
  if p1_throw == cpu_throw
    puts "\nTIE!"
    outcome = "Throw again!"
  elsif p1_throw == "rock" && cpu_throw == "scissors"
    outcome = "\nYou win!"
  elsif p1_throw == "paper" && cpu_throw == "rock"
    outcome = "\nYou win!"
  elsif p1_throw == "scissors" && cpu_throw == "paper"
    outcome = "\nYou win!"
  elsif p1_throw == "rock" && cpu_throw == "paper"
    outcome = "\nYou lose."
  elsif p1_throw == "paper" && cpu_throw == "scissors"
    outcome = "\nYou lose."
  else p1_throw == "scissors" && cpu_throw == "rock"
    outcome = "\nYou lose."
  end
  outcome
end
throw_outcome(p1_throw, cpu_throw)
