class PaymentSource < ApplicationRecord
  belongs_to :billing_information
  has_many :charges, dependent: :destroy

  enum source: { credit: 0, debit: 1, funds: 2 }
end
