require_relative 'bar_interface'

class Foo
  def bar
    puts 'foo foo foo'
  end

  include BarInterface
end
