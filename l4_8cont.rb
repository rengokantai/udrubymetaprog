module Chatty
  def Chatty.singleton_method_added(id)
    puts "Add #{id}"
  end
  def self.one()

  end
  def two()

  end
  def Chatty.three

  end

  def Chatty.singleton_method_removed(id)
    puts "Remove #{id}"
  end

  class << self
    remove_method :three
    remove_method :one
  end
end