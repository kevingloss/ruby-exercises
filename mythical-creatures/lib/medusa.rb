class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    #update victim in the block to become stoned
    if @statues.size < 3
      victim.stoned = true
      @statues << victim
    else
      victim.stoned = true
      @statues.shift
      @statues << victim
    end
  end
end


class Person
  attr_accessor :name, :stoned

  def initialize(name)
    @name = name
    @stoned = stoned
  end

  def stoned?
    @stoned == true ? true : false
  end
end
