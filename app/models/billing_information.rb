class BillingInformation < ApplicationRecord
  belongs_to :customer
  has_many :payment_sources, dependent: :destroy
end
