class Pet
  def run
   'running!'
  end

  def jump
   'jumping!'
  end

  def fetch
   'fetching!'
  end
end

class Dog < Pet
  def swim
   'swimming!'
  end

  def speak
   'bark!'
  end
end

class Bulldog < Dog
  def swim
    'cannot swim!'
  end
end

class Cat < Pet
end

karl = Bulldog.new
puts karl.speak
puts karl.swim

spot = Dog.new
puts spot.speak
puts spot.swim

pete = Pet.new
paws = Cat.new
dave = Dog.new
bud = Bulldog.new

pete.run

paws.run
paws.fetch

bud.run
bud.swim
