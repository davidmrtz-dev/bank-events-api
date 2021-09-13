require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'associations' do
    it { should have_one(:billing_information).dependent(:destroy) }
    it { should have_many(:purchases).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:password) }
  end
end
