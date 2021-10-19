class Pirate
  attr_reader :name, :job, :cursed, :booty
  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = cursed
    @crime = 0
    @booty = 0
  end

  def cursed?
    if @crime >= 3
      @cursed = true
    else false
    end
  end

  def commit_heinous_act
    @crime += 1
  end

  def rob_ship
    @booty += 100
  end

end
