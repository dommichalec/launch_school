# ask the user for two numbers
# ask the user for the operator to perform on the two numbers
# perform the operation on the two numbers
# display the result

def prompt(message)
  Kernel.puts("== #{message} ==")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(operation)
  case operation
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to the humble little calculator')
prompt('Enter your name: ')

name = nil
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Welcome, #{name}!")

loop do # main loop
  number1 = nil
  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      puts("Hmm... that doesn't seem like a valid number.")
    end
  end

  number2 = nil
  loop do
    prompt("What is the second number? ")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      puts("Hmm... that doesn't seem like a valid number.")
    end
  end

  Kernel.puts("Which operation would you like to perform on #{number1}" \
              "and #{number2}?")
  prompt(("1.) add 2.) subtract 3.) multiply 4.) divide"))

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Hmm... please select either 1 2 3 or 4")
    end
  end

  print("#{operation_to_message(operator)} #{number1} and #{number2}...")
  sleep 1.2
  print('...')
  sleep 1.2
  print('...')
  result = case operator
  when '1'
    number1.to_f + number2.to_f
  when '2'
    number1.to_f - number2.to_f
  when '3'
    number1.to_f * number2.to_f
  when '4'
    number1.to_f / number2.to_f
  end

  puts "The result is #{result}"

  prompt("Do you want to perform another calculation?")
  user_answer = Kernel.gets().chomp()

  break unless user_answer.downcase().start_with?('y')
end # end main loop

Kernel.puts("Thanks for using the humble little calculator!")
