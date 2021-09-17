class Purchase < ApplicationRecord
  belongs_to :customer
  has_many :charges, dependent: :destroy
  has_many :events, as: :eventable
  validates :amount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 500_000 }, allow_nil: false
  validates :fees, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }, allow_nil: false
end
