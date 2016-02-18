# Car class
class Car
  attr_accessor :model
  attr_reader :wheels

  def initialize
    @wheels = 4
  end

  def ==(other)
    model == other.model
  end
end
