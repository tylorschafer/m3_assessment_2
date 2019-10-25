class SearchShow

  def initialize(origin)
    @origin = origin
  end

  def station
    nearest_station = FuelStationService.new(origin).nearest_electic_station
    Station.new(nearest_station)
  end

  def navigation
    find_directions = GoogleDirectionsService.new(origin, station.street)
    Navigation.new(find_directions)
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
    navigation.duration
  end

  def directions
    navigation.steps
  end

  private
  attr_reader :location
end
