require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      first_name: "MyString",
      last_name: "MyString",
      animal_name: "MyString",
      animal_type: "MyString",
      hours: 1
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[first_name]"

      assert_select "input[name=?]", "booking[last_name]"

      assert_select "input[name=?]", "booking[animal_name]"

      assert_select "input[name=?]", "booking[animal_type]"

      assert_select "input[name=?]", "booking[hours]"
    end
  end
end
