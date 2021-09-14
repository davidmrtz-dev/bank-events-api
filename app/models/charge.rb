class Charge < ApplicationRecord
  belongs_to :purchase
  belongs_to :payment_source
  enum status: { failed: 0, succeeded: 1, pending: 2, canceled: 3 }
end
