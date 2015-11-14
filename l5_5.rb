local_var ="local"
SomeClass = Class.new do
  puts local_var
  define_method :foo do
    local_var
  end
  define_method :bar do
    local_var = "scope"
  end
end

obj = SomeClass.new
puts obj.foo
obj.bar
puts local_var
