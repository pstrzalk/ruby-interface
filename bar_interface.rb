module BarInterface
  InterfaceMethodNotImplementedError = Class.new(StandardError)

  def self.included(klass)
    puts "Bar interface has been included in class #{klass}"

    raise(InterfaceMethodNotImplementedError, 'Must implement bar') unless klass.new.respond_to?(:bar)
  end
end
