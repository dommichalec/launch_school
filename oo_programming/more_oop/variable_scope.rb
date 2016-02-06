# instance variable scope

class Person
  def get_name
    @name # remember to initialize instance variables within instance methods
  end
end

bob = Person.new
bob.get_name # => nil

# This shows another distinction from local variables. If you try to reference
# an uninitialized local variable, you'd get a NameError. But if you try to
# reference an uninitialized instance variable, you get nil.

# class variable scope

class Person
  @@total_people = 0            # initialized at the class level

  def self.total_people
    @@total_people              # accessible from class method
  end

  def initialize
    @@total_people += 1         # mutable from instance method
  end

  def total_people
    @@total_people              # accessible from instance method
  end
end

Person.total_people             # => 0
Person.new
Person.new
Person.total_people             # => 2

bob = Person.new
bob.total_people                # => 3

joe = Person.new
joe.total_people                # => 4

Person.total_people             # => 4

# only class variables can share state between objects.

# constants

class Person
  TITLES = ['Mr', 'Mrs', 'Ms', 'Dr']

  attr_reader :name

  def self.titles
    TITLES.join(', ')
  end

  def initialize(n)
    @name = "#{TITLES.sample} #{n}"
  end
end

Person.titles                   # => "Mr, Mrs, Ms, Dr"

bob = Person.new('bob')
bob.name                        # => "Ms bob"  (output may vary)

# Where constant resolution gets really tricky is when inheritance is
# involved, and that's when we need to remember that unlike other variables,
# constants have lexical scope.

# lexical scope means it (constant) may only be called (referenced) from
# within the block of code in which it is defined.
