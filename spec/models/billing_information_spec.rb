require 'rails_helper'

RSpec.describe BillingInformation, type: :model do
  describe 'associations' do
    it { should belong_to(:customer) }
  end
end
