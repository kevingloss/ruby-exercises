class Dragon

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @meal_count = 0
  end

  def name
    @name
  end

  def color
    @color
  end

  def rider
    @rider
  end

  def hungry?
    if @meal_count >= 3
      @hungry = false
    else
      @hungry = true
    end 
  end

  def eat
    @meal_count += 1

   end


end
