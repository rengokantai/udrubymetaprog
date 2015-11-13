$global = "global"

TOP_LEVEL_CONST = "toplevel"

class Parent
  @@parent_class_var = "parent var"
  PARENT_CONST = "parent const"
  @parent_eigen = "parent eigen"
end

class Child < Parent
  @@child_class_var ="child var"
  CHILD_CONST = 'child const'
  @child_eigen = "child_eigen"
  def initialize
    @child_instance = "child instance"
  end
  class InnerClass

  end

end


obj = Child.new


#instance level
puts obj.instance_variables

puts obj.instance_variable_defined? :@child_instance

p Child.instance_variables
p Parent.instance_variables

#class level
puts
p Child.class_variables
p Parent.class_variables
p Child.class_variable_defined? :@@child_class_var

#global and local

p global_variables
p local_variables

puts

p Child.constants
p self.class.constants

puts

puts obj.instance_variable_get :@child_instance
obj.instance_variable_set(:@child_instance,"new instance")  #no distance. puts obj.instance_variable_set (:@child_instance,"new instance")  incorrect
puts obj.instance_variable_get :@child_instance

puts
puts Child.class_variable_get :@@child_class_var
puts Child.const_get :PARENT_CONST
puts Child.const_get :InnerClass