require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'associations' do
    it { should belong_to(:eventable) }
  end

  it {
    should define_enum_for(:trigger).with_values(
      %i[
        charge_succeeded
        charge_pending
        charge_failed
        purchase_created
        purchase_updated
        purchase_deleted
      ]
    )
  }
end
