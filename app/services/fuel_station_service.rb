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
      limit: 1
    }
    response = json_response(search_params)
    response['fuel_stations'][0]
  end

  private

  def json_response(params)
    response = Faraday.get(
      'https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest') do |f|
        f.params = params
        f.params['api_key'] = ENV['NREL_API_KEY']
    end
    JSON.parse(response.body)
  end
end
