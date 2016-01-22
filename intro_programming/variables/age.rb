# Write a program called age.rb that asks a user how old they are and then tells
# them how old they will be in 10, 20, 30 and 40 years.
# Below is the output for someone 20 years old.

print 'How old are you? '
user_age = gets.chomp.to_i
puts "In 10 years you will be #{user_age + 10}"
puts "In 20 years you will be #{user_age + 20}"
puts "In 30 years you will be #{user_age + 30}"
puts "In 40 years you will be #{user_age + 40}"
