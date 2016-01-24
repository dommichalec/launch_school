# What does the each method in the following program return after it is finished
# executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# => the each method returns the original array [1, 2, 3, 4, 5

# Write a while loop that takes input from the user, performs an action, and
# only stops when the user types "STOP". Each loop can get info from the user.]

puts 'What is your favorite song?'
user_favorite_song = nil
while user_favorite_song != 'STOP'
  user_favorite_song = gets.chomp
  puts 'Huh? What did you say?'
end

puts 'Oh, okay :)'

# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.

my_array = %w(This is my array there are many like it but this one is mine)

my_array.each_with_index do |word, index|
  p "'#{word}' is at index #{index}"
end

# Write a method that counts down to zero using recursion.

def count_down(number)
  unless number < 0
    puts number
    count_down(number - 1)
  end
end

count_down(9)
