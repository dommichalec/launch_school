# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in
# the days before computers had video screens).

# For this exercise, write a one-line program that creates the following
# output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times { |number| puts (' ' * number) + 'The Flintstones Rock!' }

# Create a hash that expresses the frequency with which each letter occurs
# in this string:

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# cannot convert an integter to a string. a solution would be to interpolate
# 40 + 2 into a string

puts "the value of 40 + 2 is #{40 + 2}"

# What happens when we modify an array while we are iterating over it?
  # The array is permanently mutated
# What would be output by this code?
  # => [1, 3]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# What would be output by this code?
  # => [1, 2]
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Alyssa asked Ben to write up a basic implementation of a Fibonacci
# calculator, A user passes in two numbers, and the calculator will keep
# computing the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it,
# he got an error. Something about the limit variable. What's wrong
# with the code?

def fib(first_num, second_num, limit) # => added limit
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15) # => added '15'
puts "result is #{result}"
# How would you fix this so that it works?
# add the limit as a third argument to the original method

# In another example we used some built-in string methods to change the
# case of a string. A notably missing method is something provided in Rails,
# but not in Ruby itself...titleize! This method in Ruby on Rails creates a
# string that has each word capitalized as it would be in a title.

# Write your own version of the rails titleize implementation.

words = 'This is my string there are many like it but this one is mine'
words.split.map { |word| word.capitalize! }.join(' ')
p words

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# Modify the hash such that each member of the Munster family has an
# additional "age_group" key that has one of three values describing the
# age group the family member is in (kid, adult, or senior).

munsters.each do |name, attributes|
  case attributes['age']
  when (0..17)
    attributes['age group'] = 'kid'
  when(18..65)
    attributes['age group'] = 'adult'
  else
    attributes['age group'] = 'senior'
  end
end

p munsters
