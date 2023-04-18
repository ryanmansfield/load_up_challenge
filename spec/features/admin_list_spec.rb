require 'rails_helper'

RSpec.describe 'Active Admin', type: :feature do
  let!(:booking) { Booking.create!(first_name: 'Jane', last_name: "Doe", animal_name: 'bob', animal_type: 'dog', hours: '5', date: '01/01/2023') }

  scenario 'Bookings Index' do
    visit new_admin_user_session_path
    user = AdminUser.create(email: 'admin@example.com', password: 'password')
    fill_in 'admin_user_email', with: user.email
    fill_in 'admin_user_password', with: user.password
    click_button 'Login'
    visit admin_bookings_path
    expect(page).to have_content("Jane")
  end
end