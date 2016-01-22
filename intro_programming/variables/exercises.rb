# Look at the following programs...
=begin
x = 0
3.times do
  x += 1
end
puts x
and...

y = 0
3.times do
  y += 1
  x = y
end
puts x
=end
# What does x print to the screen in each case? Do they both give errors?
# Are the errors different? Why?

puts 'x will print 3 in the first loop and error out in the second due to ' \
     'local vaiable scope'

# What does the following error message tell you?

#  NameError: undefined local variable or method `shoes' for main:Object
#    from (irb):3
#    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in

puts "looks like a local variable scope error where 'shoes' has not been " \
     'defined.'
