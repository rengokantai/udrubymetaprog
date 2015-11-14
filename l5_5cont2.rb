
lambda do
  global_var = "global"

  OtherClass = Class.new do
    puts global_var
  end

  SomeClass = Class.new do
    local_var = "local"
    define_method :foo do
      global_var
    end

    define_method :bar do
      local_var = "new"
    end

  end
end.call

obj = SomeClass.new
puts obj.foo