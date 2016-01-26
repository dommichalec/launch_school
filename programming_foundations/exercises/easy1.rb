# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # => [1, 2, 2, 3]

# Describe the difference between ! and ? in Ruby. And explain what would
# happen in the following scenarios: 1. what is != and where should you use
# it? 2. put ! before something, like !user_name 3. put ! after something,
# like words.uniq! 4. put ? before something 5. put ? after something
# 6. put !! before something, like !!user_name

# the bang operator is normally used to permanently modify the caller associated
# with a method (e.g. upcase!), the ? is normally used to find whether a
# method evaluates to a boolean value (true or false). In 1.) the != is used to
# see if a particular expression evaluates to false (1 != 3)
# 2.) != my_hash.include?(2) 3.) my_hash.uniq! 4.) ?my_hash 5.) include?
# 6.) !!name

# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent.
# !<some object> is used to turn any object into the opposite of their boolean
# equivalent, just like the above, but opposite.

# Replace the word "important" with "urgent" in this string:

advice = 'Few things in life are as important as house training your pet ' \
'dinosaur.'

advice.gsub!('important', 'urgent')
p advice

# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What does the follow method calls do (assume we reset numbers to the
# original array between method calls)?

p numbers.delete_at(1) # => will return '2' as '2' is in index 1
p numbers.delete(1) # => will return '1' as that is the value that was deleted
p numbers #=> [3, 4, 5] both Array#delete_at and Array#delete mutate the object

# Programmatically determine if 42 lies between 10 and 100.

(10..100).cover?(42) # => true

# Starting with the string:

famous_words = 'seven years ago...'
# show two different ways to put the expected "Four score and " in front of it.
p 'Four score and ' << famous_words
other_famous_words = 'Four score and '
p other_famous_words + famous_words

# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this
# string as if it were a "recursive" method call

p eval(how_deep)

#If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.

p flintstones.flatten!

# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and
# Barney's number

barney_hash = flintstones.select { |name, _| name == 'Barney' }
p barney_hash

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values
# are the positions in the array.

flintstones_hash = {}
flintstones.each_with_index { |name, index| flintstones_hash[name] = index }
p flintstones_hash
