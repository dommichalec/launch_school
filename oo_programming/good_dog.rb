module Speak # define a new module that can be used by any Object within a Class via mixin
  def speak(sound) # define a new method within the module
    "#{sound}"
  end
end

class Dog # define a new object called Dog
  attr_accessor(:name) # automatically creats a getter and setter method for name (still below in name and name=(n) for notes)

  def initialize(name)
    @name = name
    puts "#{@name} was initialized!"
  end

  def name # this was renamed from get_name getter method that is used to retrieve the value of an instance variable
    @name
  end

  def name=(n) # this is renamed from set_name=(name) # setter method that is used to update the value of an instance variable
    @name = n
  end

  include Speak # mixin the Speak module using the reserved word 'include', which gives us the #speak method
end

class Human # define a new object called Human
  def initialize(name)
    @name = name
    puts "#{@name} was initialized"
  end
  include Speak # mixin the Speak module, which gives us the speak method
end

sparky = Dog.new("Sparky") # create a new Dog object called sparky, set it to instance variable
p sparky.speak('Arf!') # call the speak method via mixin with Speak module
p sparky.name # calling the getter method
sparky.name=("Sparticus") # calling the setter method to update sparky's name
bob = Human.new("Dominic") # create a new Human object called bob, set it to instance variable
p bob.speak('Hello!') # call the speak method via mixin with Speak module
