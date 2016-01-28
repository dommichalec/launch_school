# MyCar class
class MyCar
  attr_accessor(:color) # sets the getter #name and setter #name= method
  attr_reader(:year, :model) # sets the getter #year method only

  # Start class methods
  def self.calculate_gas_milage(gallons, miles)
    puts "Your vehicle gets #{miles.to_f / gallons.to_f} miles to the gallon"
  end

  # Start instance methods
  def initialize(year, model, color)
    @year = year
    @model = model
    self.color = color
    @current_speed = 0
    puts "Your #{@color} #{@model} looks great!"
  end

  def spray_paint(color)
    self.color = color # available because the setter method is available via attr_accessor(:color)
    print "Painting your car now..."
    sleep 2.2
    print '...'
    sleep 4.0
    print '...'
    sleep 3.0
    puts "Your new #{color} #{@model} looks great!"
  end

  def to_s
    puts "You currently own a #{self.color} #{self.year} #{model}."
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

my_car = MyCar.new('1997', 'Wrangler', 'yellow')
my_car.turn_on
MyCar.calculate_gas_milage(13, 100)
my_car.speed_up(20)
my_car.current_speed
my_car.speed_up(20)
my_car.current_speed
my_car.slow_down(20)
my_car.current_speed
my_car.slow_down(20)
my_car.slam_breaks
my_car.shut_down
my_car.spray_paint('red')
puts my_car
