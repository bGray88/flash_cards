require 'rails_helper'

RSpec.describe Deck, type: :model do
  describe 'validations' do
    it {should have_many(:cards) }

    it { should validate_presence_of(:title) }
  end

  it 'exists and has attributes' do
    deck = create(:deck)

    expect(deck).to be_a(Deck)
  end
end
