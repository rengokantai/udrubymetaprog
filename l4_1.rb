#Querying info about classes

module MyModule

end

class Parent
  def foo

  end
end


class Child < Parent
  include MyModule
end


obj = Child.new
foo = obj.class

puts foo        #class type

puts foo.name  #String type

p Child.ancestors
p Child.included_modules
puts Child.singleton_class?
puts Child.singleton_class.singleton_class?
puts Child.include?MyModule

puts

puts

puts obj.instance_of? Child
puts obj.instance_of? Parent

puts

puts obj.kind_of?Child
puts obj.kind_of?Parent
puts obj.kind_of?MyModule
