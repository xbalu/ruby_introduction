class User
  def full_name
    puts "Johnnie Walker"
  end

  def self.add_rename
    #alias :name :full_name
    alias_method :name, :full_name
  end
end

class Developer < User
  def full_name
    puts "Geeky geek"
  end
  add_rename
end

def User.test
  puts "test"
end

Developer.new.name #=> 'Johnnie Walker'
User.test

u = User.new

def u.hello
  puts "hello"
end

u.hello

u2 = User.new
u2.hello
