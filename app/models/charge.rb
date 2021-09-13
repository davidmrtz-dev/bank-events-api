class Charge < ApplicationRecord
  belongs_to :purchase
  belongs_to :payment_source
end
