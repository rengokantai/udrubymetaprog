#mimiking ruby  methods


#1 Add top level method
def string?(string)
  string.class == String
end

puts string? ""
puts string? []


#2 Add method in kernel

module Kernel
  def foo(arg)
    "#{arg}"
  end
end


puts foo(20)  # can be called globally


class MyClass
  def bar
    foo 10
  end
end

puts MyClass.new.bar

# Add a method in kernel that can be called like this
# notify :admin "message"

module Kernel
  def notify(who, message = "")

  end
end