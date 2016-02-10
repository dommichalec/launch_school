# method implementation
def times(number)
  counter = 0
  while counter < number
    yield(counter)
    counter += 1
  end

  number
end


# method invocation
times(5) do |num|
  puts num
end

# Method invocation starts at line 13, when the times method is called with
# an argument, 5, and a block of code.

# Execution enters the first line of the method implementation at line 3, where
# the local variable counter is initialized.

# Execution continues to line 4. The while conditional is evaluated. The first
# time through, the condition is true.

# Execution continues to line 5, which yields to the block. This is the same
# as executing the block of code, and this time, we are executing the block of
# code with an argument. The argument to the block is the counter, which is
# 0 the first time through.

# Execution jumps to the block on line 13, setting counter to the block local
# variable num.

# Execution continues in the block to line 14, which outputs the block local
# variable num.

# Reaching the end of the block, execution continues back to the times method
# implementation on line 6, where the counter is incremented.

# Reaching the end of the while loop, execution continues on line 4,
# essentially repeating steps 3 through 7.

# At some point, the while conditional should return false (otherwise, you have
# an infinite loop), allowing execution to flow to line 9, which doesn't do
# anything.

# Reaching the end of the method at line 10, execution will return the last
# expression in this method, which is the number local variable.

def add_up(x, y)
  add = x + y
  yield(add)
end

add_up(5, 4) do |answer|
  puts answer + 10
end

# method invocation starts at line 56, where the add_up method is called and is
# passed two areguments, 5 and 4, and a block of code.

# execution enters the first line of method implementation on line 52, where
# local variables add, x ,and y are initialized.

# execution of line 52 sets the addition of x and y to local variable add.

# execution continues to line 53, which yields to the block.

# execution jumps to line 56, which passes 'add' to the block and sets 'add' to
# block local variable 'answer'.

# execution contines to line 57, which adds 'answer' to 10, printing the
# summation.

def each(array)
end
