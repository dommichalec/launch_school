# Begin class exercises
class Animal # created a superclass that encapsulates logic shared by subclasses (in this case, dogs and cats)
  def speak
    "'Hello!"
  end
end

module Swimmable
  def can_swim?
    "has the ability to swim!"
  end
end

module Climbable
  def can_climb?
    "has the ability to climb!"
  end
end

module Mammals # grouping similar animals together in a module
  class Dog < Animal # Dog class inherits all the behaviors (methods) of the Animal class
    attr_accessor(:name) # gives us self.name and self.name= methods for Dog
    include Swimmable
    include Climbable

    def initialize(name, breed)
      @name = name
      @breed = breed
      puts "#{@name} has been created!"
    end

    def speak # this method overrides the Animal superclass method #speak
      puts "#{@name} says woof!"
    end

    def can_swim?
      puts "#{name} " + super
      true
    end

    def can_climb?
      puts "#{name} " + super
      true
    end

  end

  class Cat < Animal # Cat class inherits all behaviors of the Animal class
    attr_accessor(:name)
    attr_reader(:color)
    include Climbable

    def initialize(name, color)
      @name = name
      @color = color
      puts "#{@name} has been created!"
    end

    def update(name)
      self.name = name
      puts "Now the cat's name is #{self.name}."
    end

    def can_climb?
      puts "#{name} " + super
    end

    def speak
      puts super + " says #{@name}." # using super here allows us to call a method up the inheritance heirarchy (in this case, found in superclass Animal)
    end
  end
end

lassy = Mammals::Dog.new("Lassy", "Golden") # instantiating a new object, lassy via Module::Class.new
lassy.speak # => "Lassy says woof"
willow = Mammals::Cat.new("Willow", "Black") # instantiating a new object, willow via Module::Class.new
willow.speak # => "hello!, says Willow!"
willow.can_climb?
willow.update("Paws")
willow.speak
willow.can_climb?
lassy.can_swim?
lassy.can_climb?

puts Cat.ancestors
puts Dog.ancestors
