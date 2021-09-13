require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe 'associations' do
    it { should belong_to(:customer) }
  end

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:amount) }
    [
      0,
      1000,
      10000,
      100_000,
      350_000
    ].each do |value|
      it { should allow_value(value).for(:amount).on(:create) }
      it { should allow_value(value).for(:amount).on(:update) }
    end

    it { is_expected.to validate_numericality_of(:fees) }
    [
      0,
      1.2,
      3.56,
      5,
      10
    ].each do |value|
      it { should allow_value(value).for(:fees).on(:create) }
      it { should allow_value(value).for(:fees).on(:update) }
    end
  end
end
