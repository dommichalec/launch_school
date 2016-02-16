# RPSGame class
class RPSGame
  attr_accessor(:human, :computer)

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to a friendly game of Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing! See you soon."
  end

  def display_choices
    puts "You chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      puts "You beat #{computer.name}!"
    elsif human.move < computer.move
      puts "#{computer.name} beat you!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
    puts "Would you like to play again, #{human.name}?"
    answer = gets.chomp
    break if ['y', 'n'].include?(answer.downcase)
    puts "Please choose either 'y' for 'yes' or 'n' for 'no'."
    end
    answer.include?('y') ? true : false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_choices
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

class Player
  attr_accessor(:move, :name)
  def initialize
    get_name
  end
end

class Human < Player
  def get_name
    user_name = nil
    loop do
    puts "What is your name?"
    user_name = gets.chomp
    break unless user_name.empty?
    puts "Please input your name."
    end
    self.name = user_name
  end

  def choose
    human_choice = nil
    loop do
    puts "Please choose either a rock, paper, or scissors."
    human_choice = gets.chomp
    break if Move::VALUES.include?(human_choice)
    puts "Invalid choice."
    end
    self.move = Move.new(human_choice)

  end
end

class Computer < Player
  def get_name
    self.name = %w(R2D2 C3PO Chappie B9 Wall-E EVE).sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class Move
  VALUES = %w(rock paper scissors)
  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end

  def scissors?
    @value == 'scissors'
  end

  def paper?
    @value == 'paper'
  end

  def rock?
    @value == 'rock'
  end

  def >(other_move)
    case @value
    when 'rock'
      return true if other_move.scissors?
    when 'paper'
      return true if other_move.rock?
    when 'scissors'
      return true if other_move.paper?
    else
      return false
    end
  end

  def <(other_move)
    case @value
    when 'rock'
      return true if other_move.paper?
    when 'paper'
      return true if other_move.scissors?
    when 'scissors'
      return true if other_move.rock?
    else
      return false
    end
  end
end

RPSGame.new.play
