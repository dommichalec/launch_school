class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor(:title, :description, :done)
  def initialize(title, description = ' ')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title} - #{description}"
  end
end

puts todo1 = Todo.new("Buy Milk")
todo1.done!
puts todo1
