AVAILABLE_CHOICES = %w(rock paper scissors)

def prompt(msg)
  Kernel.puts("== #{msg} ==")
end

def display_choices(user, computer)
  prompt("You chose #{user} and the computer chose #{computer}!")
end

def display_winner(user, computer)
  case
  when (user == AVAILABLE_CHOICES[0] && computer == AVAILABLE_CHOICES[2]) ||
    (user == AVAILABLE_CHOICES[1] && computer == AVAILABLE_CHOICES[0]) ||
    (user == AVAILABLE_CHOICES[2] && computer == AVAILABLE_CHOICES[1])
  puts 'You win!'
  when (computer == AVAILABLE_CHOICES[0] && user == AVAILABLE_CHOICES[2]) ||
    (computer == AVAILABLE_CHOICES[1] && user == AVAILABLE_CHOICES[0]) ||
    (computer == AVAILABLE_CHOICES[2] && user == AVAILABLE_CHOICES[1])
  puts 'The computer won!'
  when user == computer
  puts "It's a tie!"
  end
end

def total_points_won?(user, computer)
  case
  when computer == 3
    prompt("The computer wins the game with #{computer} points!")
  when user == 3
    prompt("You win the game with #{user} points!")
  end
end

prompt('Welcome to a friendly game of Rock, Paper, Scissors')
prompt("What's your name?")
user_name = gets.chomp
prompt("Welcome, #{user_name.capitalize}! We're going to play best out of 5.")

loop do
user_points = 0
computer_points = 0
  loop do
    prompt("Choose one: #{AVAILABLE_CHOICES.join(", ")}")

    user_choice = nil
    loop do
      user_choice = Kernel.gets.chomp.downcase
      if AVAILABLE_CHOICES.include?(user_choice)
        break
      else
        prompt("Please select either rock, paper, or scissors")
      end
    end

    computer_choice = AVAILABLE_CHOICES.sample

    display_choices(user_choice, computer_choice)
    display_winner(user_choice, computer_choice)

    if (user_choice == AVAILABLE_CHOICES[0] && computer_choice == AVAILABLE_CHOICES[2]) ||
      (user_choice == AVAILABLE_CHOICES[1] && computer_choice == AVAILABLE_CHOICES[0]) ||
      (user_choice == AVAILABLE_CHOICES[2] && computer_choice == AVAILABLE_CHOICES[1])
      user_points += 1
    elsif (computer_choice == AVAILABLE_CHOICES[0] && user_choice == AVAILABLE_CHOICES[2]) ||
      (computer_choice == AVAILABLE_CHOICES[1] && user_choice == AVAILABLE_CHOICES[0]) ||
      (computer_choice == AVAILABLE_CHOICES[2] && user_choice == AVAILABLE_CHOICES[1])
      computer_points += 1
    else
      user_points += 0
      computer_points += 0
    end

    prompt("You have #{user_points} points and the computer has #{computer_points} points.")
    break if user_points == 3 || computer_points == 3
  end

  total_points_won?(user_points, computer_points)

  prompt("Play again?")
  user_answer = gets.chomp
  break unless user_answer.downcase.include?('y')
end

prompt("Thanks for playing, #{user_name}!")
