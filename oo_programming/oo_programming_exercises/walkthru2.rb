class Pet
  attr_accessor(:name)
  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Owner
  attr_accessor(:pets)
  def initialize(name)
    @name = name
    @pets = []
  end
end

marco = Bulldog.new("Marco")
paws = Cat.new("Paws")
tim = Owner.new("Tim")
tim.pets << marco << paws
puts tim.pets.size
