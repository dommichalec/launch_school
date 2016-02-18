require 'minitest/autorun' # loads all necessary files
require "minitest/reporters" # gives a little color to the test
Minitest::Reporters.use!
require_relative 'car' # require the file you're testing


# CarTest class
class CarTest < MiniTest::Test
  def test_wheels # create instance method that begins with 'test_'
    car = Car.new
    assert_equal(4, car.wheels) # (expected value, test or actual value)
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
