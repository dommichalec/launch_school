# If we have a Car class and a Truck class and we want to be able to go_fast,
# how can we add the ability for them to go_fast using the module Speed.
# How can you check if your Car or Truck can now go fast?

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

car = Car.new
car.go_fast # => I am a Car and going super fast!
truck = Truck.new
truck.go_fast # => I am a Truck and going super fast!

# If we have a class AngryCat how do we create a new instance of this class?
# The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

cat = AngryCat.new
cat.hiss

class Cube
  def initialize(volume)
    @volume = volume
  end

  def get_volume
    @volume
  end
end

dis_cube = Cube.new(5000)
p dis_cube.get_volume

class Bag
  @@color = "black"
  def initialize
  end

  def self.color
    @@color
  end
end

Bag.new
p Bag.color
