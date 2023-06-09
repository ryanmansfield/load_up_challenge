require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/bookings", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Booking. As you add validations to Booking, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      first_name: "first_name",
      last_name: "last_name",
      animal_name: "animal_name",
      animal_type: "cat",
      hours: 3,
      date: "date"
    }
  }

  let(:invalid_attributes) {
    {
      first_name: nil,
      last_name: nil,
      animal_name: nil,
      animal_type: nil,
      hours: 0,
      date: nil
    }
  }

  describe "GET /show" do
    it "renders a successful response" do
      booking = Booking.create! valid_attributes
      get booking_url(booking)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_booking_url
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Booking" do
        expect {
          post bookings_url, params: { booking: valid_attributes }
        }.to change(Booking, :count).by(1)
      end

      it "redirects to the created booking" do
        post bookings_url, params: { booking: valid_attributes }
        expect(response).to redirect_to(booking_url(Booking.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Booking" do
        expect {
          post bookings_url, params: { booking: invalid_attributes }
        }.to change(Booking, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post bookings_url, params: { booking: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end
end
