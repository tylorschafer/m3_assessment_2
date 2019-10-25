class GoogleDirectionsService
  attr_reader :address, destination

  def initialize(origin, destination)
    @origin = origin
    @destination = destination
  end

  def directions_to_address
    search_params = {
      outputFormat: 'json',
      origin: origin,
      destination: destination
    }
    json_response(search_params)
  end

  private

  def json_response(params)
    response = Faraday.get(
      'https://maps.googleapis.com/maps/api/directions') do |f|
        f.params = params
        f.params['key'] = ENV['GOOGLE_API_KEY']
      end
    JSON.parse(response.body)
  end
end
