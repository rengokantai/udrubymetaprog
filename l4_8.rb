#Hooks

module A
  def A.included(mod)
    puts "#{self} #{mod}"
  end
end

module Enumerable
  include A
end


module A
  def A.extended(mod)
    puts "#{self} #{mod}"
  end
end

module Enumerable
  extend A
end


class Foo
  def self.inherited(subclass)
    puts "#{subclass}"
  end
end

class Bar < Foo

end

class Baz < Bar

end

