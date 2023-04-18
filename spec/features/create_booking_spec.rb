require 'rails_helper'

RSpec.describe 'Creating a booking', type: :feature do
  scenario 'valid inputs with redirect to show page' do
    visit new_booking_path
    fill_in 'booking[first_name]', with: 'first_name'
    fill_in 'booking[last_name]', with: 'last_name'
    fill_in 'booking[animal_name]', with: 'animal_name'
    fill_in 'booking[animal_type]', with: 'cat'
    fill_in 'booking[hours]', with: '8'
    fill_in 'booking[date]', with: '01/01/2023'
    click_on 'Create Booking'
    expect(page).to have_content('first_name')
  end

  scenario 'invalid inputs display an error message on new page' do
    visit new_booking_path
    fill_in 'booking[first_name]', with: ''
    fill_in 'booking[last_name]', with: ''
    fill_in 'booking[animal_name]', with: ''
    fill_in 'booking[animal_type]', with: ''
    fill_in 'booking[hours]', with: ''
    fill_in 'booking[date]', with: ''
    click_on 'Create Booking'
    expect(page).to have_content("errors prohibited this booking from being saved:")
  end

end