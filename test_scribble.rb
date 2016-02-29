require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first_todo
    assert_equal(@todo1, @list.first)
  end

  def test_last_todo
    assert_equal(@todo3, @list.last)
  end

  def test_list_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop_list
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_type_error
    assert_raises(TypeError) { @list.add('1') }
    assert_raises(TypeError) { @list.add(1) }
    assert_raises(TypeError) { @list.add(1.0) }
  end

  def test_each_method
    result = []
    @list.each {|todo| result << todo}
    assert_equal([@todo1, @todo2, @todo3], result)
  end

  def test_select_method
    result = []
    @list.select {|todo| result << todo.first }
    assert_equal(@todo1, result[0])
  end

  def test_item_at
    one_too_many = @list.size + 1
    assert_raises(IndexError) {@list.item_at(one_too_many) }
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo2, @list.item_at(1))
    assert_equal(@todo3, @list.item_at(2))
  end
end
