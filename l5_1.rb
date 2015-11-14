#unless Object.method_defined?(:tap)
  class Object
    # Or, yield(self) if block_given?
    #
    def tap(&block)
      block.call(self)
      self
    end


    def tap2(&block)
      self.instance_eval &block
      self
    end
  end
#end


class MyClass
  def initialize
    @var = "var"
  end
  def foo
    puts "foo"
  end
end

obj = MyClass.new
obj.tap2 { puts @var}.foo