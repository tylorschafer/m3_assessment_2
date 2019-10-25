class Station
  attr_reader :station_name,
              :street,
              :city,
              :state,
              :zip,
              :fuel_type,
              :distance,
              :access_times

  def initialize(attrs = {})
    @station_name = attrs[:station_name]
    @street = attrs[:street_address]
    @city = attrs[:city]
    @state = attrs[:state]
    @zip = attrs[:zip]
    @fuel_type = attrs[:fuel_type_code]
    @distance = attrs[:distance]
    @access_times = attrs[:access_days_time]
  end
end
