class Werewolf
  attr_reader :name, :location, :human, :wolf, :hungry

  def initialize(name, location = '')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human == true ? true : false
  end

  def wolf?
    @wolf == true ? true : false
  end

  def change!
    if @human == true
      @wolf = true
      @human = false
      @hungry = true
    else
      @human = true
      @wolf = false
    end
  end

  def hungry?
    @hungry
  end

  def consume_victim(victim)
    if @wolf == true && @hungry == true
      @hungry = false
      victim.status = :dead
    end
  end
end

class Victim
  attr_accessor :status

  def initialize(name)
    @name = name
    @status = :alive
  end
end
