# What do the following expressions evaluate to?
x = 2 # => 2
puts x = 2 # => nil
p name = "Joe" # => 'Joe'
four = "four" # => 'four'
print something = "nothing" # => nothing => nil
puts ''

# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# This code should print out nothing since return is explicitly placed before
# the local variable 'words' can be printed to the screen.

# 1) Edit the method in exercise #4 so that it does print words on the screen.
# 2) What does it return now?

def scream(words)
  words = words + '!!!!'
  puts words
end

scream("Yippeee") # should print out 'Yippeee!!!!' and return nil

# What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# Looks like a method that takes two parameters was called only using one
# argument
