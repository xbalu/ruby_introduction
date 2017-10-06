require_relative "stack"
require "test/unit"

class StackTest < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_create_new_stack
    assert @stack
  end

  def test_push_into_stack_returns_nil
    assert_equal nil, @stack.push(5)
  end

  def test_pop_empty_stack
    assert_raise_message("stack is empty") do
      @stack.pop
    end
  end

  def test_pop_reversed_order
    @stack.push(1)
    @stack.push(2)
    assert_equal 2, @stack.pop
    assert_equal 1, @stack.pop
  end
end
