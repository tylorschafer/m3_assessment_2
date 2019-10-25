class SearchShow

  def initialize(station)
    @station = station
  end

  def name
    station.name
  end

  def address
    station.address
  end

  def fuel_type
    station.fuel_type
  end

  def distance
    station.distance
  end

  def access_times
    station.access_times
  end

  def travel_time
    station.travel_time
  end

  def directions
    station.directions
  end

  private
  attr_reader :station
end
