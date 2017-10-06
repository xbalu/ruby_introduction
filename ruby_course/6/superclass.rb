class A
end

class B < A
end

class C < B
end

class D < A
end

def show_class_order(classname)
  # print "#{classname} -> "
  # result = classname.superclass
  #
  # loop do
  #   if result == nil
  #     print "\n"
  #     break
  #   end
  #
  #   if result != BasicObject
  #     print " #{result} ->"
  #   else
  #     print " #{result}"
  #   end
  #
  #   result = result.superclass
  # end

  klasses = []
  while classname != nil
    klasses << classname
    classname = classname.superclass
  end
  puts klasses.map { |klass| klass.name}.join(" -> ")
end

show_class_order(A)
show_class_order(B)
show_class_order(C)
show_class_order(D)
show_class_order(Array)
