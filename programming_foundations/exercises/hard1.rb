# What do you expect to happen when the greeting variable is referenced
# in the last line of the code below?

if false
  greeting = “hello world”
end

greeting # => nil

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# because informal_greeting is referencing the original object greetings, and
# because the Array#<< method permanently modifies the caller, both the
# referencing and original objects are modified.

# In other exercises we have looked at how the scope of variables affects the
# modification of one "layer" when they are passed to another. To drive home
# the salient aspects of variable scope and modification of one scope by
# another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# B.)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# C.)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
Solution 3

# A)
"one is: one"
"two is: two"
"three is: three"

# B)
"one is: one"
"two is: two"
"three is: three"

# C)
"one is: two"
"two is: three"
"three is: one"
