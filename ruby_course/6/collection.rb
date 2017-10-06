class MyCollection
  def initialize
    @collection = []
  end

  def push(element)
    @collection << element
  end

  def each
    @collection.each { |ele| yield ele }
  end
end

c = MyCollection.new
c.push(5)
c.push(6)
c.each do |ele|
  puts ele
end
