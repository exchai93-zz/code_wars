# Remove argument order dependencies

# Use hash of options rather than fixed list of parameters
# Explicitly define defaults with || OR with fetch
class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    # Using ||
    @chainring = args[:chainring] || 10
    # Using fetch method, default is 20
    @cog = args.fetch(:cog, 20)
    @wheel = args[:wheel]
  end
end

Gear.new(:chainring => 52, :cog => 10, :wheel => Wheel.new(23, 1.5)).gear_inches

# Isolate defaults into a separate method
# Use when defaults are more than simple numbers or strings
def initialize(args)
  args = defaults.merge(args)
  @chainring = args[:chainring]
end

def defaults
  {:chainring => 40, :cog => 18}
end

# Classes in an app should depend on code that you own; use a wrapping method to isolate external dependencies
module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end
  end
end
# Module responsible for creating new instances of SomeFramework::Gear -- FACTORIES 
# Defines a separte and distinct object to which you can send the gear message
module GearWrapper
  def self.gear(args)
      SomeFramework::Gear.new(args[:chainring],
                              args[:cog],
                              args[:wheel])
  end
end
