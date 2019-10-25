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

  def street
    station.street
  end

  def city
    station.city
  end

  def state
    station.state
  end

  def zip
    station.zip
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
    'google api'
  end

  def directions
    'google api'
  end

  private
  attr_reader :location
end
