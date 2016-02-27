# Shelter collection class
class Shelter
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = []
  end

  def add(dog)
    fail TypeError, "#{dog} cannot be added to the system" unless dog.instance_of? Dog
    @roster << dog
    puts "#{dog.name} has been added to the roster!"
  end

  def mark_adopted(index)
    adopted_dog = @roster.[](index)
    @roster.[](index).availablity = false
    puts "#{adopted_dog.name} was just adopted!"
    @roster.each do |dog|
      puts "#{dog.name} is still available!" if dog.availablity
    end
  end

  def each
    counter = 0
    while counter < @roster.size
      yield(@roster[counter])
      counter += 1
    end
    @roster
  end

  def select
    results = []
    @roster.each do |dog|
      yield(dog) ? results << dog : next
    end
    results
  end
end

# Dog class
class Dog
  attr_accessor :name, :age, :availablity

  def initialize
    @name = name
    @age = age
    @availablity = true
  end

  def available!
    @availablity = true
  end

  def adopted!
    @availablity = false
    puts "#{name} has been adopted!"
  end

  def to_s
    name + " is " + age.to_s + " years old."
  end
end

sparky = Dog.new
sparky.name = "Sparky"
sparky.age = 4
puts sparky

=begin
paws = Dog.new
paws.name = "Paws"
paws.age = 7

bhodi = Dog.new
bhodi.name = "Bhodi"
bhodi.age = 3

columbus = Shelter.new("The Columbus Dog Shelter")

columbus.add(paws)
columbus.add(sparky)
columbus.add(bhodi)
=end
