# Rock Paper Scissor is a two-player game where each player chooses one of three
# possible moves: rock, paper, or scissor. The chose moves will be compared to
# see who wins according to the following rules:
# rock beats scissors
# scissors beat paper
# paper beats rock
# If the players chose the same move, then it's a tie.

# nouns: player, move, rule
# verbs: choose, compare

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
    puts "Thanks for playing! Have a great day."
  end

  def display_winner
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} computer chose #{computer.move}"

    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{human.name} lost!"
    else
      puts "It's a tie."
    end
  end

  def play_again?
    user_play_again = nil
    loop do
      puts "Would you like to play again?"
      user_play_again = gets.chomp.downcase
      break if ['y', 'n'].include? user_play_again
      puts "Invalid choice. Please choose either 'y' or 'n'"
    end
    return true if user_play_again == 'y'
    return false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

class Move
  VALUES = %w(rock paper scissors)

  def initialize(value)
    @value = value
  end

  def >(other_move)
    if @value == 'rock'
      return true if other_move == 'scissors'
      return false
    elsif @value == 'scissors'
      return true if other_move == 'paper'
      return false
    elsif @value == 'paper'
      return true if other_move == 'rock'
      return false
    end
  end

  def <(other_move)
    if @value == 'rock'
      return true if other_move == 'paper'
      return false
    elsif @value == 'scissors'
      return true if other_move == 'rock'
      return false
    elsif @value == 'paper'
      return true if other_move == 'scissors'
      return false
    end
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor(:move, :name)
  def initialize(player_type = :human)
    set_name
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Please enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose: rock, paper, scissors."
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = %w(R2D2 C3PO).sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end

end

RPSGame.new.play
