class SearchShow

  def initialize(location)
    @location = location
  end

  def station
    nearest_station = FuelStationService.new(location).nearest_electic_station
    Station.new(nearest_station)
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
  attr_reader :location
end
