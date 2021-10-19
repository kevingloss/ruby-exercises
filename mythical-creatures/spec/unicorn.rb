class Unicorn

  attr_reader :name, :color
  def initialize (name)
    @name = name
    @color = color
  end
  def white?
    return true if color == 'white'
    false
  end
end
