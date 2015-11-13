#defining variables


#1. usual syntax
class Myclass
  @@class_var = ""
  CONST =""
  @eigen =""
  def initialize
    @instan = ""
  end
end

Myclass.const_set :CONST,'foo'
puts Myclass.constants
Myclass.class_variable_set :@@class_var, 'fo'
puts Myclass.class_variables

obj = Myclass.new
puts obj.instance_variables
puts obj.instance_variable_set :@instan,'f'
puts obj.instance_variables


# unusual syntax

Myclass2 = Class.new do
  @@class_var2 = ""
  CONST2 =""
  @eigen =""
  def initialize
    @instan = ""
  end
end
puts
puts self
puts self.class
p Object.class_variables
p Object.constants.include?(:CONST2)
puts
p Myclass2.instance_variables
p Myclass2.new.instance_variables


# class variable test

class VClass
  @@klass_var_1=""
  def foo
    @@klass_var_2=""
  end
end

puts VClass.class_variables
VClass.new.foo
p VClass.class_variables


