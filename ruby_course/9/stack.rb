class Entry
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Stack
  def initialize
    @first = nil
    @last = nil
  end

  def push(element)
    new_element = Entry.new(element)

    if @first.nil?
      @first = new_element
    else
      @last.next = new_element
    end

    @last = new_element
  end

  def pop
    if @first && @first.next.nil?
      @first = nil
    else
      new_last = find_previous_element
      new_last.next = nil
      @last = new_last
    end
  end

  def each
    element = @first

    while !element.nil?
      yield element.value
      element = element.next
    end
  end

  def find_previous_element
    element = @first

    while !element.next.nil?
      break if element.next == @last
      element = element.next
    end

    element
  end
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.pop
stack.pop
stack.pop
stack.push(5)
stack.push(6)
stack.push(7)
stack.push(8)
stack.pop
stack.pop
stack.push(10)
stack.each { |e| puts e }
