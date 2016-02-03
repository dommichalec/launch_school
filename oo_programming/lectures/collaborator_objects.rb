module Tricks
  def roll_over
    'rolling over!'
  end
end

class Pet
  attr_accessor(:owner)
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

class Person
  attr_accessor(:pets, :name)
  def initialize(name)
    @name = name
    @pets = []
  end
end

frenchie = Bulldog.new
paws = Cat.new
dom = Person.new("Dominic")
dom.pets << frenchie << paws

dom.pets.each do |pet|
  p pet.jump
end
