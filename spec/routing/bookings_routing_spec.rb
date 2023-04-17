require "rails_helper"

RSpec.describe BookingsController, type: :routing do
  describe "routing" do

    it "routes to #new" do
      expect(get: "/bookings/new").to route_to("bookings#new")
    end

    it "routes to #show" do
      expect(get: "/bookings/1").to route_to("bookings#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/bookings").to route_to("bookings#create")
    end
  end
end
