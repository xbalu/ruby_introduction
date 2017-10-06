class Entry
  attr_accessor :value, :prev, :next

  def initialize(value)
    @value = value
    @prev = nil
    @next = nil
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def insert_forward(value)
    new_element = Entry.new(value)

    if @head.nil?
      @head = new_element
      @tail = new_element
    else
      @head.prev = new_element
      new_element.next = @head
      @head = new_element
    end
  end

  def insert_end(value)
    new_element = Entry.new(value)

    if @head.nil?
      @head = new_element
    else
      @tail.next = new_element
      new_element.prev = @tail
    end

    @tail = new_element
  end

  def size
    each { |e| }
  end

  def delete(value)
    current = find_current_entry(value)

    if @head == current
      if @head.next
        @head = @head.next
        @head.prev = nil
      else
        @head = nil
      end
    else
      current.prev.next = current.next
      current.next.prev = current.prev if current.next
      @tail = current.prev if current.prev.next.nil?
    end
  end

  def find_current_entry(value)
    current = @head

    while current
      break if current.value == value
      current = current.next
    end

    current
  end

  def each
    cnt, current = 0, @head

    while !current.nil?
      yield current.value
      current = current.next
      cnt += 1
    end

    cnt
  end
end

list = LinkedList.new
list.insert_end(4)
list.insert_end(5)
list.insert_end(6)
list.insert_forward(3)
list.insert_forward(2)
list.insert_forward(1)
list.insert_end(7)
list.insert_forward(0)
list.insert_forward(10)
list.insert_end(44)
list.delete(0)
list.delete(1)
list.delete(2)
list.delete(3)
list.delete(10)
list.delete(5)
list.delete(4)
list.each { |e| puts e }
puts "size: #{list.size}"
