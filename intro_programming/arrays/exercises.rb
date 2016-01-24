# Below we have given you an array and a number. Write a program that checks
# to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

p arr.include?(number)

# What will the following programs return? What is value of arr after each?
arr = ['b', 'a']
arr = arr.product(Array(1..3))
# => b1 b2 b3 a1 a2 a3
arr.first.delete(arr.first.last)
# => returns 1

arr = ['b', 'a']
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# => returns [1, 2, 3]

# How do you print the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
p arr.last.first

# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5) # => 3
# arr.index[5] # error
arr[5] # => 8

# What is the value of a, b, and c in the following program?
string = 'Welcome to America!'
a = string[6] # => 'e'
b = string[11] # => 'A'
c = string[19] # => nil

# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?
# => Array values are accessed using the value's index, therefor to change the
# name in this case, we have to use the index to access and modify the value

names[3] = 'jody'
p names

# Write a program that iterates over an array and builds a new array that is
# the result of incrementing each value in the original array by a value of 2.
# You should have two arrays at the end of this program, The original array and
# the new array you've created. Print both arrays to the screen using the p
# method instead of puts.

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_new_array = []
my_array.map do |value|
  my_new_array << value + 2
end

p my_array
p my_new_array
