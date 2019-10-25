require 'rails_helper'

describe Station do
  it 'exists' do
    params = {
      'station_name' => 'Tylor Station',
      'street_address' => '123 fake street',
      'city' => 'Denver',
      'state' => 'CO',
      'zip' => '80202',
      'fuel_type_code' => 'ELEC',
      'distance' => 0.0934,
      'access_days_time' => 'Midnight every leap year',
    }

    station = Station.new(params)

    expect(station).to be_a Station
    expect(station.name).to eq(params['station_name'])
    expect(station.street).to eq(params['street_address'])
    expect(station.city).to eq(params['city'])
    expect(station.state).to eq(params['state'])
    expect(station.zip).to eq(params['zip'])
    expect(station.fuel_type).to eq(params['fuel_type_code'])
    expect(station.distance).to eq(params['distance'])
    expect(station.access_times).to eq(params['access_days_time'])
  end
end
