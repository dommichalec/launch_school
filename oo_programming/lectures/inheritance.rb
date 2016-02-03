module Tricks
  def roll_over
    'rolling over!'
  end
end

class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  include Tricks
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
  include Tricks
  def speak
    'meow!'
  end
end

# Class based inheritance works great when it's used to model hierarchical
# domains. Let's take a look at a few exercises. Suppose we're building a
# software system for a pet hotel business, so our classes deal with pets.

# Create a sub-class from Dog called Bulldog overriding the swim method
# to return "can't swim!"

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

p pete.run                # => "running!"
p kitty.run               # => "running!"
p kitty.speak             # => "meow!"
p dave.speak              # => "bark!"
p bud.run                 # => "running!"
p bud.swim                # => "can't swim!"
p kitty.roll_over
p Cat.ancestors

# What is the method lookup path and how is it important?
# The method lookup path is the order in which Ruby will traverse the
# class hierarchy to look for methods to invoke.
