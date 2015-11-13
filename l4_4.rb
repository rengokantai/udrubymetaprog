# define method in kernel module

module Kernel
  def attr_accessible(*args)
    args.each do |name|
      define_method(name){instance_variable_get("@#{name}")}
      define_method("#{name}"){|new_name|instance_variable_set("@#{name}",new_name)}
    end
  end
  private :attr_accessible
end