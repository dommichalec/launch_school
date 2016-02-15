# scoping rules for local vars

# local var
# vars initialized in outer scope is accessible in inner scope (do...end, {})
# but not the other way around

# a new scope is created with a do...end or {}

number = 2 # instance var number is initialized to the fixnum 2

loop do # do...end creates a scope
  number = 4 # instance var reassignment to the fixnum 4
  break
end

p number # p calls inspect automatically on the object

if true # a new scope was not created because this is not a block
  another_number = 3 # instance var initialized to fixnum 3
end

p another_number # p calls inspect automatically on the object


a = 'hi'
# 1st scope
[1].each do |n|
  # 2nd scope
  b = 'hello'
  loop do |x|
  # 3rd scope
    p a
    p b
    c = 'hey'
    break
  end
end

# methods

# 1.) memorize rules regarding method definition and method invocation
# 2.) methods have their own scope
# 3.) pass by ref v. pass by value
  # Ruby is pass by reference value. Mutating a value will result in a new state


class Person
  attr_accessor :name
  def self.total
  end

  def change_info(new_name)
    self.name = new_name
  end
end

bob = Person.new
bob.change_info('Bobby')

# data structures

# Read Array and Hash documentation every single day
# iteration
# selection
# transformation

arr = [1, 2, 3, 4, 5]
index = 0
loop do
  puts arr[index]
  index += 1
  break if index > arr.size
end
