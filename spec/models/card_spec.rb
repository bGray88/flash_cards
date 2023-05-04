require 'rails_helper'

RSpec.describe Card, type: :model do
  describe 'validations' do
    it {should belong_to(:deck) }

    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:answer) }
  end

  it 'exists and has attributes' do
    deck = create(:deck)
    card = create(:card, deck: deck)

    expect(card).to be_a(Card)
  end
end
