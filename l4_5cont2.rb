# alter variable
#visibility

class A
  class B

  end
end

obj = A::B.new

class A
  private_constant :B
  #public_constant :B
end

obj = A::B.new # Exception

=begin
class_variable_set
instance_variable_set
const_set
local_variable_set

remove_class_variable
remove_instance_variable
remove_const
=end

