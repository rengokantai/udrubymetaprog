module MyModule
  def foo
    "modulefoo"
  end
  def bar
    "modulebar"
  end
end

class MyClass
  def foo
    "classfoo"
  end
end

obj = MyClass.new
puts obj.foo
obj.extend(MyModule)
puts obj.foo
p obj.singleton_methods
puts
obj2 = MyClass.new
puts obj2.foo

MyClass.extend MyModule
puts MyClass.singleton_class.instance_methods.include? :bar


####################
#Altering method
class Parent
  def hello
    puts "Parent"
  end
end

class Child < Parent
  def hello
    puts "Child"
  end
end

c = Child.new
c.hello

class Child
  remove_method :hello #still in parent
end

c.hello

class Child
  undef_method :hello# prevent any calls to hello
end

c.hello #Exception