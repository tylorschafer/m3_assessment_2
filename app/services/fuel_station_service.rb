class FuelStationService
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def nearest_electic_station
    search_params = {
      location: location,
      format: 'json',
      fuel_type: 'ELEC',
      api_key: ENV['NREL_API_KEY'],
      limit: 1
    }
    json_response(search_params)
  end

  private

  def json_response(params = {})
    response = conn.get do |conn|
      conn.params = params
    end
    JSON.parse(response.body)
  end

  def conn
    Faraday.new(url:
      'https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest') do |f|
        f.adapter Faraday.default_adapter
    end
  end
end
