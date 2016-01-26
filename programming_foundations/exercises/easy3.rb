# Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << 'Dino'
p flintstones

# How can we add multiple items to our array? (Bronco and Hoppy)

flintstones << 'Bronco' << 'Hoppy'
p flintstones

# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the
# return value "Few things in life are as important as ". But leave the
# advice variable as "house training your pet dinosaur.".

advice.slice!(0, advice.index('house'))
p advice

# Write a one-liner to count the number of lower-case 't' characters in the
# following string:

statement = 'The Flintstones Rock!'
p statement.scan('t').count

# Back in the stone age (before CSS) we used spaces to align things on the
# screen. If we had a 40 character wide table of Flintstone family members,
# how could we easily center that title above the table with spaces?

title = 'Flintstone Family Member'

puts title.center(40)
