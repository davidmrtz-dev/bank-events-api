require 'rails_helper'

RSpec.describe Charge, type: :model do
  describe 'associations' do
    it { should belong_to(:purchase) }
    it { should belong_to(:payment_source) }
    it { should have_many(:events) }
  end

  it { should define_enum_for(:status).with_values(%i[failed succeeded pending canceled]) }
end
