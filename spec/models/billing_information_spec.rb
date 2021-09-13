require 'rails_helper'

RSpec.describe BillingInformation, type: :model do
  describe 'associations' do
    it { should belong_to(:customer) }
    it { should have_many(:payment_sources).dependent(:destroy) }
  end
end
