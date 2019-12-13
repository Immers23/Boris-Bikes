require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity

  end

  def release_bike
    fail "No bikes available" if empty?
      bikes.pop
  end

  def dock(bike)
    fail "Dock is full" if full?
      bikes << bike
  end

  def broken_bike(bike)
    bike.broken_bike
    dock(bike)
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
