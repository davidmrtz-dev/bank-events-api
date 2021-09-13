class PaymentSource < ApplicationRecord
  belongs_to :billing_information
  has_many :charges, dependent: :destroy
end
