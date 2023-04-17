class Booking < ApplicationRecord
  validates :first_name, :last_name, :animal_name, presence: true
  validates :animal_type,  presence: true
  validates :animal_type, inclusion: { in: %w[cat dog],
                                       message: "%{value} is not a valid animal type" }

  validates :hours, presence: true
  validates :hours, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 2,
                                    less_than_or_equal_to: 8 }
end


