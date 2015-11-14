
class SomeClass
  local_var ="local"
  define_method :foo do
    local_var
  end
  # not working
  # def foo
  #   local_var
  # end
  define_method :bar do
    local_var = "scope"
  end
end

obj = SomeClass.new
puts obj.foo
obj.bar

