#Querying info about methods

module MyModule
  def module_method

  end
end

class Parent
  def parent_method

  end
end


class Child < Parent
  include MyModule
  def child_method

  end
end


obj = Child.new

def obj.singleton_method

end


p obj.methods
p obj.methods(false)

p obj.singleton_methods

puts

p Child.instance_methods
p Child.instance_methods(false)

puts Child.method_defined? :singleton_methods
puts
puts obj.respond_to? :child_method #true
puts obj.respond_to? :not_exists_method #false
puts obj.respond_to? :clone #true

puts obj.singleton_class.instance_methods(false)

# obj.methods(false) = obj.singleton_methods = obj.singleton_class.instance_methods(false)
# (Note!! )Classname.instance_methods(false)!= obj.singleton_class.instance_methods(false)


#Ruby 1.9+
p obj.private_methods
p Child.private_class_method
p Child.private_instance_methods