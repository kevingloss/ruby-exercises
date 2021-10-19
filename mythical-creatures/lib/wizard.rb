class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    spell.insert(0, 'sudo ')
  end

  def rested?
    if @spell_count >= 3
      @rested = false
    else
      true
    end
  end

  def cast
    @spell_count += 1
    'MAGIC MISSILE!'
  end
end
