# Create a superclass called Vehicle for your MyCar class to inherit
# from and move the behavior that isn't specific to the MyCar class to
# the superclass. Create a constant in your MyCar class that stores
# information about the vehicle that makes it different from other
# types of Vehicles.

module Towable
  def can_tow?(pounds)
    pounds > 2000 ? true : false
  end
end

class Vehicle
  @@vehicles_created = 0
  attr_accessor(:color) # sets the getter #name and setter #name= method
  attr_reader(:year, :model) # sets the getter #year method only
  # Start class methods
  def self.calculate_gas_milage(gallons, miles)
    puts "Your vehicle gets #{miles.to_f / gallons.to_f} miles to the gallon"
  end

  def self.created
    @@vehicles_created
  end

  # Start instance methods
  def initialize(year, model, color)
    @year = year
    @model = model
    self.color = color
    @current_speed = 0
    @@vehicles_created += 1
    puts "Your #{@color} #{@model} looks great!"
  end

  def spray_paint(color)
    self.color = color # available because the setter method is available via attr_accessor(:color)
    print "Painting your vehicle now..."
    sleep 2.2
    print '...'
    sleep 4.0
    print '...'
    sleep 3.0
    puts "Your new #{color} #{@model} looks great!"
  end

  def turn_on
    puts "You have started your #{@color} #{@model}"
  end

  def speed_up(speed)
    puts "You hit the gas and sped up #{speed} mph."
    @current_speed += speed
  end

  def slow_down(speed)
    puts "You tapped the breaks and slowed down #{speed} mph."
    @current_speed -= speed
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def slam_breaks
    puts "You slammed on the breaks!"
    @current_speed = 0
  end

  def shut_down
    puts "You have turned off your #{@model}."
    @current_speed = 0
  end
end

class MyCar < Vehicle
  TOWING_BED = false
end

class MyTruck < Vehicle
  include Towable
  TOWING_BED = true
end

car = MyCar.new('2010', 'Hyundai Sonata', 'black')
truck = MyTruck.new('2012', 'Ford Tundra', 'red')

car
truck
puts Vehicle.created
car.spray_paint('silver')
p truck.can_tow?(3000)
p MyCar.ancestors
p MyTruck.ancestors
p Vehicle.ancestors
