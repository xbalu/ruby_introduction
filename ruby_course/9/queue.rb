class Person
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class Queue
  def initialize
    @first = nil
    @last = nil
  end

  def push(value)
    new_person = Person.new(value)

    if @first.nil?
      @first = new_person
    else
      @last.next = new_person
      @last = new_person
    end

    @last = new_person
  end

  def pop
    if @first && @first.next.nil?
      @first = nil
      @last = nil
    else
      @first = @first.next
    end
  end

  def each
    current = @first

    while current
      yield current.value
      current = current.next
    end
  end
end

queue = Queue.new
queue.push(1)
queue.push(2)
queue.push(3)
queue.push(4)
queue.push(5)
queue.pop
queue.pop
queue.push(6)
queue.push(7)
queue.push(8)
queue.pop
queue.pop
queue.pop
queue.each { |e| puts e }
