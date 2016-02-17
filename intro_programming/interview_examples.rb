# local variable scope
# local variables cannot bleed through to methods, must be passed through
# into the method

# str1 = 'hello'

# def my_method
#   puts str1
# end

# my_method # => will return an error

# blocks form an inner scope, which can access artifacts in outer scope
# within a block, you can reassign variables and modify outter scope variables

def str1
  'from string'
end

str2 = 'world' # variable is initialized

[1].each do |_|
  puts str1 # => 'from string'
  puts str2 # => 'world'
  str2 = 'another new string' # this is variable reassignment # => 'a new string'
end

puts str1
puts str2
# => 'world'
# => 'another new string'

# method arguments (pass by reference or pass by value) ========================

def run(str)
  str += 'hello world' # reassigment does not permanently modify the artifact
end

a = 'hello'
run(a)
puts a

def walk(str)
  str << ' world' # calling a method that mutates the caller does modify the artifact
end

b = 'hello'
walk(b)
puts b

# know the collection methods well (#each #map #collect #select etc.) ==========
