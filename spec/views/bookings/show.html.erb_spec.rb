require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    assign(:booking, Booking.create!(
      first_name: "First Name",
      last_name: "Last Name",
      animal_name: "Animal Name",
      animal_type: "cat",
      hours: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Animal Name/)
    expect(rendered).to match(/cat/)
    expect(rendered).to match(/2/)
  end
end
