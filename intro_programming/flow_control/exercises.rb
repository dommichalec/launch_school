# Write down whether the following expressions return true or false. Then
# type the expressions into irb to see the results.
(32 * 4) >= 129 # false
false != !true # false
true == 4 # false
false == (847 == '874') # true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true
# false  || false || true || false

# Write a method that takes a string as argument. The method should return the
# all-caps version of the string, only if the string is longer than 10
# characters. Example: change "hello world" to "HELLO WORLD".
# (Hint: Ruby's String class has a few methods that would be helpful.
# Check the Ruby Docs!)

def capitalize(str= 'hello world')
  case
  when str.length > 10
    str.upcase!
  else
    str
  end
end

p capitalize()
p capitalize('hello')

# Write a program that takes a number from the user between 0 and 100 and
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.

user_number = nil
loop do
  puts 'Pick a number between 0 and 100: '
  user_number = gets.chomp.to_i
  if (1..100).cover?(user_number)
    break
  else
    puts 'Invalid choice.'
  end
end

case
when (0..50).cover?(user_number)
  puts 'You chose a number between 0 and 50'
when (51..100).cover?(user_number)
  puts 'You chose a number between 51 and 100'
else
  puts 'Somehow you made an invalid choice again'
end

# What will each block of code below print to the screen? Write your answer on a
# piece of paper or in a text editor and then run each block of code to see if
# you were correct.

'4' == 4 ? puts('TRUE') : puts('FALSE') # => FALSE

x = 2
 if ((x * 3) / 2) == (4 + 4 - x - 3)
   puts 'Did you get it right?'
 else
   puts 'Did you?'
 end

# 'Did you get it right?'

y = 9
 x = 10
 if (x + 1) <= (y)
   puts 'Alright.'
 elsif (x + 1) >= (y)
   puts 'Alright now!'
 elsif (y + 1) == x
   puts 'ALRIGHT NOW!'
 else
   puts 'Alrighty!'
 end

# 'Alright now!'

# When you run the following code...

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
# end

# equal_to_four(5)

# You get the following error message..
# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

# close out the if/else statement within the equal_to_four method
