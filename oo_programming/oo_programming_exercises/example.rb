module Doable
  def convertable?
    NUMBER_OF_DOORS == 4 ? true : false
  end

  def towable?(pounds)
    pounds.to_i > 200 ? true :false
  end
end

module Cleanable
  def eco_friendly?(miles, gallon)
    miles.to_f / gallon.to_f > 24 ? true : false
  end
end

class Vehicle
  attr_accessor(:color) #@color self.color self.color=
  attr_reader(:year)

  include Doable

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    puts "Your #{year} #{color} #{model} is ready for a spin!"
  end

  def total_gas_mileage(gallons, miles)
    "Your vehicle gets #{miles.to_f / gallons.to_f} miles per gallon."
  end

  def speed_up
    @current_speed += 20
    update_speed
  end

  def slow_down
    @current_speed -= 20
    update_speed
  end

  def shut_off
    @current_speed = 0
    update_speed
  end

  def update_speed
    puts "You're now going #{@current_speed}."
  end

  def spray_paint(color)
    @color = color
    print "Painting..."
    sleep 2.0
    print '.....'
    sleep 2.0
    print '.....'
    sleep 1.2
    puts "Your #{@model} is now #{color}!"
  end
end

class Car < Vehicle
  NUMBER_OF_DOORS = 4
  @@cars = []
  @@number_of_cars = 0

  include Cleanable

  def initialize(year, color, model)
    super(year, color, model)
    set_car
  end

  def set_car
    @@cars << ["#{@year}", "#{@model}", "#{@color}"]
    @@number_of_cars += 1
  end

  def self.total
    puts "===== Displaying #{@@number_of_cars} cars =====".center(90)
    @@cars
  end
end

class Truck < Vehicle
  NUMBER_OF_DOORS = 2
  @@trucks = []
  @@number_of_trucks = 0

  def initialize(year, color, model)
    super(year, color, model)
    set_truck
  end

  def set_truck
    @@trucks << ["#{@year}", "#{@model}", "#{@color}"]
    @@number_of_trucks += 1
  end

  def self.total
    puts "===== Displaying #{@@number_of_trucks} trucks =====".center(90)
    @@trucks
  end
end

# Begin program

car = Car.new(2014, "yellow", "Corvette")
truck = Truck.new(2015, "red", "F-150")
p Car.total
p Truck.total
p Car.ancestors
p Truck.ancestors
