class Entry
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  include Enumerable

  attr_reader :head
  def initialize
    @head = nil
  end

  # zmodyfikować algorytm wstawiania nowego elementu
  # zapamiętać adres ostatniego elementu (nowy atrybut tail)
  def push(element)
    new_element = Entry.new(element)

    if @head.nil?
      @head = new_element
    else
      find_last_entry.next = new_element
    end
  end

  def each
    current = @head
    while !current.nil?
      yield current.value
      current = current.next
    end
  end

  private

  def find_last_entry
    last_entry = @head

    while !last_entry.next.nil?
      last_entry = last_entry.next
    end

    last_entry
  end
end

c = LinkedList.new
c.push(5)
c.push(6)
c.push(7)
c.push(8)
c.each { |ele| puts ele }
