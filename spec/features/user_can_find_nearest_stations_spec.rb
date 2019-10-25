require 'rails_helper'

describe 'As a user' do
  it 'I can see nearest station' do
    visit '/'

    select 'Turing', from: :location

    click_on 'Find Nearest Station'

    expect(current_path).to eq(search_path)
    expect(page).to have_css('.station')

    within('.station') do
      expect(page).to have_css('.name')
      expect(page).to have_css('.address')
      expect(page).to have_css('.fuel-type')
      expect(page).to have_css('.distance')
      expect(page).to have_css('.access-times')
    end

    expect(page).to have_css('.travel-time')
    expect(page).to have_css('.directions')
  end
end
