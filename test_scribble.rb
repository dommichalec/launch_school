require 'pry'

class Calculator
  attr_accessor(:operator, :result)
  def initialize
    @operator = operator
    @result = result
  end

  def add(num1, num2)
    num1.to_f + num2.to_f
  end

  def subtract(num1, num2)
    num1.to_f - num2.to_f
  end

  def multiply(num1, num2)
    num1.to_f * num2.to_f
  end

  def divide(num1, num2)
    num1.to_f / num2.to_f
  end
end

class User
  attr_accessor(:number1, :number2)
  def initialize
    @number1 = nil
    @number2 = nil
  end

  def valid_number?(num)
    num.to_i() != 0
  end

  def choose_numbers
    first_number = nil
    loop do
      puts "What is your first number?"
      first_number = gets.chomp
      break if valid_number?(first_number)
      puts "Please input a valid number other than zero"
    end
    @first_number = first_number
    second_number = nil
    loop do
      puts "What is your second number?"
      second_number = gets.chomp
      break if valid_number?(second_number)
      puts "Please input a valid number other than zero"
    end
    @second_number = second_number
  end

  def choose_operator
    puts "What would you like to do with #{@first_number} and #{@second_number}?"
    operator = nil
    loop do
      puts "Choose '1' to add, '2' to subtract '3' to multiply or '4' to divide."
      operator = gets.chomp
      break if %w(1 2 3 4).include?(operator)
      puts ("Hmm... that doesn't look like a valid option.")
    end
    @operator = operator
  end
end

# Orchestration engine
class Calculator_Engine
  attr_accessor(:calculator, :user, :operator)

  def initialize
    @calculator = Calculator.new
    @user = User.new
  end

  def display_welcome_message
    puts "Welcome to my humble little calculator!"
  end

  def display_goodbye_message
    puts "Thanks for using my humble little calculator"
  end

  def display_result
    @result = nil
    case operator
    when '1'
    result = add(number1, number2)
    binding.pry
    when '2'
    result = subtract(number1, number2)
    when '3'
    result = multiply(number1, number2)
    when '4'
    result = divide(number1, number2)
    end
    puts "The result is #{@result}"
  end

  def use_again?
    answer = nil
    loop do
      puts "Would you like to use the calculator again?"
      answer = gets.chomp.downcase
      break if %w(y n).include?(answer)
      puts "Sorry, your answer must be either 'y' or 'n'."
    end
    answer == 'y'
  end

  def calculate
    display_welcome_message
    user.choose_numbers
    user.choose_operator
    display_result
    binding.pry
    use_again?
    display_goodbye_message
  end
end

calculator = Calculator_Engine.new
calculator.calculate
