#send, public_send, __send__


class MyClass
  def foo
    "foo"
  end
  private
  def bar
    "bar"
  end
end


obj = MyClass.new
puts obj.send(:foo)
puts obj.send(:bar)

puts obj.bar

puts obj.public_send(:foo)
puts obj.public_send(:bar)

obj.__send__(:bar)

