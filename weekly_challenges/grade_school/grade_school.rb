# steps

# 1.) understanding the problem < this is the hardest step

class School
  def initialize
    @roster = {}
  end

  def to_h
    result = {}
    @roster.keys.sort.each do |key|
      result[key] = @roster[key].sort
    end
    result
  end

  def grade(number)
    raise InvalidNumber unless number.is_a?(Integer)
    @roster[number] || []
  end

  def add(name, grade)
    raise InvalidName unless name.is_a?(String)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] <<= name
  end
end
