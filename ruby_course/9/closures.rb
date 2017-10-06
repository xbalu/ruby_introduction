# domknięcia
# Proc.new === proc
# lambda === ->
block = Proc.new do
  puts "Called block"
end

# block.call
# block.call

def create_block
  x = 0
  -> do
    puts "Called block2"
    x += 1
    puts "x = #{x}"
  end
end

# block3 = create_block
# block3.call
# block3.call

# return w procu odnosi sie do calego kodu w ktorym zostal utworzony
def test_proc
  block = proc do
    puts "Calling block"
    return
    puts "After block called"
  end
  puts "Before calling block"
  block.call
  puts "After calling block"
end

# test_proc

# return w lambdzie odnosi sie do kodu lambdy
def test_lambda
  block = lambda do
    puts "Calling block"
    return
    puts "After block called"
  end
  puts "Before calling block"
  block.call
  puts "After calling block"
end

# test_lambda

class Greeter
  def initialize(&block)
    @counter = block
  end

  def say_hello
    puts "Hello" + "!" * @counter.call
  end
end

# greet = Greeter.new { rand(10) }
# greet.say_hello
# greet.say_hello
# greet.say_hello
# greet.say_hello

p = Proc.new { |x, y, z| puts "x = #{x}, y = #{y}, z = #{z}"}
p.call(1)
p.call(1, 2)
p.call(1, 2, 3)

p = lambda { |x, y, z| puts "x = #{x}, y = #{y}, z = #{z}"}
# p.call(1) # ArgumentError
# p.call(1, 2) # ArgumentError
p.call(1, 2, 3)
