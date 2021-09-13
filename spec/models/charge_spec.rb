require 'rails_helper'

RSpec.describe Charge, type: :model do
  describe 'associations' do
    it { should belong_to(:purchase) }
    it { should belong_to(:payment_source) }
  end
end
