#1 def

class MyClass
  def instance_method
    @instance_variable= ""
  end
  def self.class_method(a,b,c) #Or Myclass.class_method
    @class_instance_variable =a
  end
end

puts MyClass.instance_methods(false)
puts MyClass.methods(false)
puts MyClass.singleton_class.instance_methods(false)

#2 define_method
class Myclass
  define_method :foo do |arg|
    "#{arg}"
  end
end

puts Myclass.new.foo(2)

#eigenclass. equi. to  Myclass.singleton_class
class << MyClass
  define_method :bar do
    "Myclass bar"
  end
end

puts MyClass.bar  # Do not to add  .new

