require_relative 'bike'

class DockingStation
  attr_reader :bikes

    def initialize
      @bikes = []
    end

  def release_bike
    p "Bikes count:"
    p @bikes.count
    p @bikes
    fail "No bikes available" if @bikes.count == 0
      p "didn't return"
      @bikes
  end

  def dock(bike)
    fail "Dock is full" if @bikes.count >= 20
      @bikes << bike
  end

  def bike
    @bikes
  end
end
