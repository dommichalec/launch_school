class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def >(other_person)
    age > other_person.age
  end

  def <(other_person)
    age < other_person.age
  end
end

bob = Person.new("Bob", 43)
kari = Person.new("Kari", 44)

puts "#{kari.name} is older than #{bob.name}" if kari.>(bob)
