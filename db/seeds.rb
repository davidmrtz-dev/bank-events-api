Customer.create!(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

BillingInformation.create!(
  customer: Customer.first
)

PaymentSource.create!(
  source: 'credit',
  statement_date: 17.days.from_now,
  billing_information: BillingInformation.first
)

5.times do
  Purchase.create!(
    name: Faker::Commerce.product_name,
    amount: Faker::Number.decimal(l_digits: 5, r_digits: 2),
    payments: Faker::Number.within(range: 1..24),
    fees: Faker::Number.within(range: 0.0..2.0),
    customer: Customer.first
  )
end
