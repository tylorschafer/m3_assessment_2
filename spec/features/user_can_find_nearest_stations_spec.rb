require 'rails_helper'

describe 'As a user' do
  it 'I can see nearest stations' do
    # As a user
    # When I visit "/"
    visit '/'
    # And I select "Turing" form the start location drop down (Note: Use the existing search form)
    select 'Turing', from: 'Location'
    # And I click "Find Nearest Station"
    click_on 'Find Nearest Station'
    # Then I should be on page "/search"
    expect(current_path).to eq(search_path)
    # Then I should see the closest electric fuel station to me.
    expect(page).to have_css('.station')
    # For that station I should see
    within('.station') do
    # - Name
      expect(page).to have_css('.name')
    # - Address
      expect(page).to have_css('.address')
    # - Fuel Type
      expect(page).to have_css('.fuel-type')
    # - Distance
      expect(page).to have_css('.distance')
    # - Access Times
      expect(page).to have_css('.access-times')
    end
    #
    # I should also see:
    # - the distance of the nearest station
    # - the travel time from Turing to that fuel station (should be 0.1 miles)
    expect(page).to have_css('travel-time')
    # - The HTML direction instructions to get to that fuel station
    expect(page).to have_css('directions')
    #   "Head <b>southeast</b> on <b>17th St</b> toward <b>Larimer St</b>"

  end
end
