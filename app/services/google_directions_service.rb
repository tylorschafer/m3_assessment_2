class GoogleDirectionsService
  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def directions_to_address
    search_params = {
      outputFormat: 'json',
      origin: @origin,
      destination: @destination,
      key: ENV['GOOGLE_API_KEY']
    }
    response = json_response(search_params)
    response['routes'][0]['legs'][0]
  end

  private

  def json_response(params)
    response = Faraday.get(
      'https://maps.googleapis.com/maps/api/directions/json') do |f|
        f.params = params
      end
    JSON.parse(response.body)
  end
end
