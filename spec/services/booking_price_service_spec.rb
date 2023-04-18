require "rails_helper"

RSpec.describe BookingPriceService, type: :model do
  it "has a base price of $20" do 
    service = BookingPriceService.new({ animal_type: 'dog', hours: 0 })
    expect(service.call).to be(20)

  end
  it "charges $10 per hour for dogs" do 
    service = BookingPriceService.new({ animal_type: 'dog', hours: 5 })
    expect(service.call).to be(70)
  end
  it "charges $5 per hour for cats" do
    service = BookingPriceService.new({ animal_type: 'cat', hours: 5 })
    expect(service.call).to be(45)
  end
end