# Module is like a hash
module myStuff

  def MyStuff.apple()
    puts "I AM APPLES!"
  end

  TANGERINE = "Living reflection of a dream"

end

# Accessing out of the module

MyStuff.apple()
puts MyStuff::TANGERINE

# Accessing a hash
mystuff['apple']

# Accessing from a Class
thing = MyStuff.new()
thing.apples()
puts thing.tangerine


# Class are like blueprints / definitions for creating new mini modules
# 'requiring' a module is similar to instantiating a class - object is created
