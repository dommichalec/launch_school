class Person
  attr_accessor(:name)

  def ==(other)
    name == other.name
  end
end

bob = Person.new
bob.name = "bob"

robert = Person.new
robert.name = "bob"

p bob == robert # this was made possible by overriding the == method on line 4

str1 = 'something'
str2 = 'something'

p str1.object_id
p str2.object_id

str1 == str2 # evaluates to true because the value of the objects are equal
str1.equal?(str2) # evaluates to false because although their values are the
# same, they are two different objects.

sym1 = :something
sym2 = :something

int1 = 3
int2 = 3

p sym1.equal?(sym2) # => true
p int1.equal?(int2) # => true

#  If two symbols or two integers have the same value, they are also the same
# object. This is a performance optimization in Ruby, because you can't modify
# a symbol or integer.
