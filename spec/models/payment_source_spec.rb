require 'rails_helper'

RSpec.describe PaymentSource, type: :model do
  describe 'associations' do
    it { should belong_to(:billing_information) }
  end
end
