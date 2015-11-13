#eval in diff contexts

class ClassSecret
  def initialize
    @s =1
  end
  private
  def secret
    "#{@s}"
  end
end


c =ClassSecret.new

puts c.instance_eval{@s}
puts c.instance_eval{secret}
c.instance_eval do |o|
 puts o==self
end

puts "==exec=="
c.instance_exec(10) do |x|
  puts @s + x
end

z=5
c.instance_eval{puts @s + z}