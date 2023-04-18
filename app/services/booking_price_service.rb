class BookingPriceService

  def initialize(args)
    @animal_type = args[:animal_type]
    @hours = args[:hours]
  end

  def call
    calculate_cost
  end

  private

  def base_price
    20
  end

  def hourly_rates
    {
      dog: 10,
      cat: 5
    }
  end

  def calculate_cost
    base_price + (@hours * hourly_rates[@animal_type.to_sym])
  end
end
