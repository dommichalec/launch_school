require 'minitest/autorun' # loads all necessary files
require "minitest/reporters" # gives a little color to the test
Minitest::Reporters.use!
require_relative 'car' # require the file you're testing


# CarTest class
class CarTest < MiniTest::Test
  def test_wheels
    car = Car.new
    assert_equal(4, car.wheels)
  end

  def test_value_equality
    car1 = Car.new
    car2 = Car.new

    car1.model = "Wrangler"
    car2.model = "Wrangler"

    assert_equal(car1, car2)
  end
end

=begin

Output --

Run options: --seed 62238

# Running:

CarTest .

Finished in 0.001097s, 911.3428 runs/s, 911.3428 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

=end
