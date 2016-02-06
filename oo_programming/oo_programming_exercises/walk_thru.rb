class Person
  attr_accessor(:first_name, :last_name, :age)
  def initialize(name)
    parse_name(name)
  end

  def to_s
    name
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(name)
    parse_name(name)
  end

  private

  def parse_name(name)
    parts = name.split(' ')
    self.first_name = parts[0].to_s
    self.last_name = parts.size > 1 ? parts[1] : ''
  end
end

bob = Person.new('Robert')
p bob.name
p bob.first_name
p bob.last_name
p bob.last_name = 'Smith'
p bob.name
