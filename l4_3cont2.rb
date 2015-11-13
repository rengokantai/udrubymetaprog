local_var =[:foo,:bar]

Myclass = Class.new do
  local_var.each do |e|
    define_method e do
      instance_variable_get :"@#{e}"
    end
  end
end

p Myclass.instance_methods(false)


obj = Myclass.new
obj.define_singleton_method :f do
  "f"
end

puts obj.f

Myclass.define_singleton_method :b do
  "b"
end

puts Myclass.b