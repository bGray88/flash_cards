require 'rails_helper'

RSpec.describe Deck, type: :model do
  describe 'validations' do
    it { should have_many(:cards) }

    it { should validate_presence_of(:title) }
  end

  before(:each) do
    @decks = create_list(:deck, 5)
  end

  it 'exists and has attributes' do
    expect(@decks.first).to be_a(Deck)
  end
end
