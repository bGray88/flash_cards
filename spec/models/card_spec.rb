require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'validations' do
    it { should belong_to(:deck).optional }

    it { should validate_presence_of(:number_1) }
    it { should validate_presence_of(:number_2) }
    it { should validate_presence_of(:operator) }
    it { should validate_presence_of(:answer) }
    it { should validate_presence_of(:calc_type) }
  end

  before(:each) do
    @cards = create_list(:card, 5)
  end

  it 'exists and has attributes' do
    expect(@cards.first).to be_a(Card)
  end
end
