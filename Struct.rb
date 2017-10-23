# Ruby built in class
# Way to bundle a number of attributes together, using accessor methods, without having to write an explicit class

# Allows you to protect changes in externally owned data structures and to make code more readable
Wheel = Struct.new(:rim, :tyre)
  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end

# Same as the Struct above but in Class format 
class Wheel

  attr_accessor :rim, :tyre

  def initialize
    @rim = rim
    @tyre = tyre
  end

  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end
end

# Use of a Struct
SelectOption = Struct.new(:display, :value) do
  def to_ary
    [display, value]
  end
end

# Use of a class
class SelectOption

  attr_accessor :display, :value

  def initialize(display, value)
    @display = display
    @value = value
  end

  def to_ary
    [display, value]
  end
end
