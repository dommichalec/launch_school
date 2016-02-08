class Person
  attr_accessor(:name, :age)
  def initialize(name, age)
    @name = name
    @age =  age
  end

  def >(other_person)
    age > other_person.age
  end

end

todd = Person.new("Todd", 43)
ashley = Person.new("Ashley", 34)

puts "Todd is older than Ashley" if todd.age > ashley.age
