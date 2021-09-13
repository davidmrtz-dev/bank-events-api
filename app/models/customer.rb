class Customer < ApplicationRecord
  has_secure_password
  has_one :billing_information, dependent: :destroy
  has_many :purchases, dependent: :destroy
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
