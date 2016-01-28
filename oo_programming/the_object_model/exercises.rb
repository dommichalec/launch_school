# How do we create an object in Ruby? Give an example of the creation of an
# object.

class Classroom # define a new class called Classroom
end

homeroom = Classroom.new # create a new Classroom object, set it == variable

# What is a module? What is its purpose? How do we use them with our classes?
# Create a module for the class you created in exercise 1 and include
# it properly.

# a module is a way to introduce methods to a class without tying the methods
# directly to the class itself. They house common methods to be used by various
# objects.

module Headcount
  def headcount(students)
    students.count
  end
end

class Classroom
  include Headcount
end

puts Classroom.ancestors

# => Classroom Headcount Object Kernel BasicObject
