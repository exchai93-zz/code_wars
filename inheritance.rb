class Parent

  def override()
    puts 'PARENT override()'
  end

  def impicit()
    puts 'PARENT implicit()'
  end

  def altered()
    puts 'PARENT altered()'
  end
end

# Child inherits features from the Parent class
class Child < Parent

  def override()
    puts 'CHILD override()'
  end

  def altered()
    puts 'CHILD, BEFORE PARENT altered()'
    # Gets the Parent class for you
    super()
    puts 'CHILD, AFTER PARENT altered()'
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()

# output
PARENT implicit()
PARENT implicit()
PARENT override()
CHILD override()
PARENT altered()
CHILD, BEFORE PARENT altered()
PARENT altered()
CHILD, AFTER PARENT altered()

# Using super() with initialize, same as child.altered() example above 
def Child < Parent
  def initialize(stuff)
    @stuff = stuff
    super()
  end
end
