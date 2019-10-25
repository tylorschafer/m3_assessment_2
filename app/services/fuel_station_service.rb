class FuelStationService

  private

  def json_response
    conn.get()
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1') do |f|
      f.adapter Faraday.default_adapter
      f.params['api_key'] = ENV['NREL_API_KEY']
    end
  end
end
