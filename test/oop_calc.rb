# Calculator collection class
class Calculator
  attr_reader(:result)

  def self.add(num1, num2)
    num1 + num2
  end

  def self.subtract(num1, num2)
    num1 - num2
  end

  def self.multiply(num1, num2)
    num1 * num2
  end

  def self.divide(num1, num2)
    num1 / num2 # not using Integer#to_f here because numbers already set to_f
  end

  def calculate_result(number1, number2, operator)
    @result = case operator
             when '1'
             Calculator.add(number1, number2)
             when '2'
             Calculator.subtract(number1, number2)
             when '3'
             Calculator.multiply(number1, number2)
             when '4'
             Calculator.divide(number1, number2)
             end
    puts "The result is #{result}"
  end
end

# User class
class User
  attr_reader(:number1, :number2, :operator, :use_again)

  def valid_number?(num)
    num.to_i != 0
  end

  def choose_number1
    first_number = nil
    loop do
      puts 'What is your first number?'
      first_number = gets.chomp
      break if valid_number?(first_number)
      puts 'Please input a valid number other than zero'
    end
    @number1 = first_number.to_f
  end

  def choose_number2
    second_number = nil
    loop do
      puts 'What is your second number?'
      second_number = gets.chomp
      break if valid_number?(second_number)
      puts 'Please input a valid number other than zero'
    end
    @number2 = second_number.to_f
  end

  def choose_operator
    puts "What would you like to do with #{number1} and #{number2}?"
    operator = nil
    loop do
      puts "Choose '1' to add, '2' to subtract '3' to multiply or '4' to" \
      ' divide.'
      operator = gets.chomp
      break if %w(1 2 3 4).include?(operator)
      puts "Hmm... that doesn't look like a valid option."
    end
    @operator = operator
  end

  def use_again?
    answer = nil
    loop do
      puts 'Would you like to use the calculator again? y/n'
      answer = gets.chomp
      break if %w(y n).include?(answer.downcase)
      puts "Please choose either 'y' for 'yes' or 'n' for 'no'."
    end
    @use_again = answer.include?('y') ? true : false
  end
end

# Orchestration engine
class CalculatorEngine
  attr_reader(:calculator, :user)

  def initialize
    @calculator = Calculator.new
    @user = User.new
  end

  def display_welcome_message
    puts 'Welcome to the humble little calculator!'
  end

  def display_goodbye_message
    puts 'Thanks for using the humble little calculator!'
  end

  def use
    display_welcome_message
    loop do
      user.choose_number1
      user.choose_number2
      user.choose_operator
      calculator.calculate_result(user.number1, user.number2, user.operator)
      break unless user.use_again?
    end
    display_goodbye_message
  end
end

# Start calculator here
CalculatorEngine.new.use
