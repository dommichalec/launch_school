class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def dog_name
    "#{@name} says bark! bark!" # can @name be referenced here?
  end
end

pugs = Dog.new('Pugs')
puts pugs.dog_name # => bark! bark! Pugs bark! bark!

# Since the Dog class doesn't have an initialize instance method,
# the method lookup path went to the super class, Animal, and executed
# Animal#initialize. That's when the @name instance variable was initialized,
# and that's why we can access it from teddy.dog_name.

class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(name); end

  def dog_name
    "bark! bark! #{@name} bark! bark!" # can @name be referenced here?
  end
end

teddy = Dog.new("Teddy")
puts teddy.dog_name # => bark! bark! bark! bark!

# In this case, @name is nil, because it was never initialized.
# The Animal#initialize method was never executed. Remember that
# uninitialized instance variables return nil.

# mixing in modules

module Swim
  def enable_swimming
    @can_swim = true
  end
end

class Dog
  include Swim

  def swim
    "swimming!" if @can_swim
  end
end

teddy = Dog.new
teddy.swim  # => nil

# What happened? Since we didn't call the Swim#enable_swimming method,
# the @can_swim instance variable was never initialized. Assume the same
# module and class from above, we need to do the following:

# Assume the same module and class from above, we need to do the following:

teddy = Dog.new
teddy.enable_swimming
teddy.swim # => swimming!
