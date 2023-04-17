require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:valid_attributes) {
    {
      first_name: "first_name",
      last_name: "last_name",
      animal_name: "animal_name",
      animal_type: "animal_type",
      hours: "hours",
      date: "date"
    }
  }

  it "is valid with valid attributes" do 
    expect(Booking.new(valid_attributes)).to be_valid
  end
  it "is not valid without a first_name" do 
    booking = Booking.new(valid_attributes.merge({ first_name: nil }))
    expect(booking).to_not be_valid
  end
  it "is not valid without a last_name" do 
    booking = Booking.new(valid_attributes.merge({ last_name: nil }))
    expect(booking).to_not be_valid
  end
  it "is not valid without an animal_name" do 
    booking = Booking.new(valid_attributes.merge({ animal_name: nil }))
    expect(booking).to_not be_valid
  end
  it "is not valid without an animal_type" do 
    booking = Booking.new(valid_attributes.merge({ animal_type: nil }))
    expect(booking).to_not be_valid
  end
  it "is not valid if animal_type is not cat or dog" do 
    booking = Booking.new(valid_attributes.merge({ animal_type: "pig" }))
    expect(booking).to_not be_valid
  end
  it "is not valid without hours less then 2" do 
    booking = Booking.new(valid_attributes.merge({ hours: 1 }))
    expect(booking).to_not be_valid
  end
  it "is not valid without hours more then 8" do 
    booking = Booking.new(valid_attributes.merge({ hours: 9 }))
    expect(booking).to_not be_valid
  end
end