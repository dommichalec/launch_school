require 'pry'

# Rock Paper Scissor OOP style
# RPS is a two person game where each player chooses one of
# three possible moves: rock paper or scissors.

# rock beats scissors
# scissors beat paper
# paper beats rock

# if the players choose the same move, then it's a tie.

# nouns: player, move, rule
# Verbs: choose, compare

# player
# => choose
# move
# rule

# => compare

# Game Orchestration Engine
class Game
  attr_accessor(:human, :computer)

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thank for playing, #{human.name}! Good bye."
  end

  def display_winner
    if human.move > computer.move
      puts "You win!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_moves
    puts "You chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def play_again?
    human_answer = nil
    loop do
      puts "do you want to play again? (y/n)"
      human_answer = gets.chomp
      break if ['y', 'n'].include?(human_answer.downcase)
      puts "sorry, must choose either 'y' or 'n'."
    end
    human_answer.downcase == 'y' ? true : false
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      binding.pry
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

class Move
  VALUES = ['rock', 'paper', 'scissors']
  def initialize(value)
    @value = value
  end

  def scissors?
    @value = 'scissors'
  end

  def paper?
    @value = 'paper'
  end

  def rock?
    @value = 'rock'
  end

  def to_s
    @value
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
    (paper? && other_move.rock?) ||
    (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
    (paper? && other_move.scissors?) ||
    (scissors? && other_move.rock?)
  end
end

class Player
  attr_accessor(:move, :name)
  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "what is your name?"
      n = gets.chomp.capitalize
      break unless n.empty?
      puts "please input your name."
    end
    self.name = n
    puts "nice to meet you #{self.name}!"
  end

  def choose
    choice = nil
    loop do
      puts "please choose rock paper or scissors"
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "sorry, invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = %w(Helmsworth Brody Sebastian McCaffrey).sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

Game.new.play
