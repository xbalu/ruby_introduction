class Stack < Array
  def push(element)
    super
    nil
  end

  def pop
    empty? ? raise("stack is empty") : super
  end
end
