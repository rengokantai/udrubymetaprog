class L4_3
  puts self
end
# equivalent to
L4_3 = Class.new do
  puts self
end

=begin
class Child<Parent
end
equi. to
Child = Class.new(Parent) do
end

=======

module ModuleName (is same as) ModuleName = Module.new do
=end

puts "class declration cannot using outer scope"

local_var =[:var]
=begin
class My1
  # in this scenario, self = My1 so cannot access outer scope
  local_var.each do |i|
    attr_accessor i
  end
end
=end

#this works
My2 = Class.new do
  local_var.each do |i|
    attr_accessor i
  end
end
p My2.instance_methods

