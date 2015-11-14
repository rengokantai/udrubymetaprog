class Construct
  def self.new(*properties)
    Class.new do
      @properties = properties
      attr_accessor *properties
      def initialize(*values)
        values.each_with_index do |value, index|
          send("#{self.class.properties[index]}=",value)
        end
      end

      def [](key)
        send key
      end
      def []=(key, value)
        send("#{key}=",value)
      end

      def self.properties
        @properties
      end
    end
  end
end

Product = Construct.new(:id,"name")
obj = Product.new(1,"book")
puts obj.name
puts obj[:name]
p Product.instance_methods(false)