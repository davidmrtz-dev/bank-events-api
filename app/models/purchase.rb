class Purchase < ApplicationRecord
  belongs_to :customer
  validates :amount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 500_000 }, allow_nil: false
  validates :fees, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }, allow_nil: false
end
