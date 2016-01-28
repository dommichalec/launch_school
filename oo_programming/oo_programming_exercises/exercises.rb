# Begin class exercises
class Animal # created a superclass that encapsulates logic shared by subclasses (in this case, dogs and cats)
  def speak
    "'Hello!"
  end
end

module Swimmable
  def swim
    "has the ability to swim!"
  end
end

class Dog < Animal # Dog class inherits all the behaviors of the Animal class
  def initialize(name, breed)
    @name = name
    @breed = breed
    puts "#{@name} has been created!"
  end

  def speak # this method overrides the Animal superclass method #speak
    puts "#{@name} says woof!"
  end
end

class Cat < Animal # Cat class inherits all behaviors of the Animal class
  attr_accessor(:name)
  attr_reader(:color)
  include Swimmable

  def swim
    puts "#{name} " + super
  end

  def initialize(name, color)
    @name = name
    @color = color
    puts "#{@name} has been created!"
  end

  def update(name)
    self.name = name
    puts "Now the cat's name is #{self.name}."
  end

  def speak
    puts super + " says #{@name}." # using super here allows us to call a method up the inheritance heirarchy (in this case, found in superclass Animal)
  end
end

lassy = Dog.new("Lassy", "Golden") # instantiating a new object, lassy
lassy.speak # => "Lassy says woof"
willow = Cat.new("Willow", "Black") # instantiating a new object, willow
willow.speak # => "hello!, says Willow!"
willow.swim
willow.update("Paws")
willow.speak
willow.swim

puts Cat.ancestors
