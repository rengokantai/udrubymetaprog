#Change visibility

class MyClass
  def foo
    #now is public
  end
end


class MyClass
  private :foo
  protected :foo
  public :foo
  private_class_method :new  #cannot call class.new
  public_class_method :new

end

class << MyClass
  private :new  #same as  private_class_method :new
end