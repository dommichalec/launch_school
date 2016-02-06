module Maintenance
  def change_tires
    "Changing #{Vehicle::WHEELS} tires."
  end
end

class Vehicle
  Vehicle::WHEELS = 4
end

class Car < Vehicle
  include Maintenance

  def wheels
    Vehicle::WHEELS
  end
end

a_car = Car.new
p a_car.wheels
p a_car.change_tires
