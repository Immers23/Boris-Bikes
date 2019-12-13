class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def broken_bike
    @working = false
  end
  
end
