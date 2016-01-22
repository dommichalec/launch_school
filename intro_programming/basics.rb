# Add two strings together that, when concatenated, return your first and last
# name as your full name in one string.

p 'Dominic ' + 'Michalec'

# Use the modulo operator, division, or a combination of both to take a 4 digit
# number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and
# the ones.

p 4321 / 1000
p 4321 % 1000 / 100
p 4321 % 100 / 10
p 4321 % 10 / 1

# Write a program that uses a hash to store a list of movie titles with the year
# they came out. Then use the puts command to make your program print out the
# year of each movie to the screen. The output for your program should look
# something like this.

my_movie_hash = {'movie one' => 2001, 'movie two' => 2009,
                 'movie three' => 1998, 'movie four' => 2012,
                 'movie five' => 1988 }

puts my_movie_hash['movie one']
puts my_movie_hash['movie two']
puts my_movie_hash['movie three']
puts my_movie_hash['movie four']
puts my_movie_hash['movie five']

my_other_movie_hash = [2001, 2009, 1998, 2012, 1988]

# Use the dates from the previous example and store them in an array.
# Then make your program output the same thing as exercise 3.

puts my_other_movie_hash[0]
puts my_other_movie_hash[1]
puts my_other_movie_hash[2]
puts my_other_movie_hash[3]
puts my_other_movie_hash[4]

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8

p 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
p 7 * 6 * 5 * 4 * 3 * 2 * 1
p 6 * 5 * 4 * 3 * 2 * 1
p 5 * 4 * 3 * 2 * 1

# Write a program that calculates the squares of 3 float numbers of
# your choosing and outputs the result to the screen.

p 3.2 * 3.2
p 4.56 * 4.56
p 1.11 * 1.11

# What does the following error message tell you?

# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

puts 'There is a missing } somewhere in the code'
