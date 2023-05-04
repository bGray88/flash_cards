require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { create(:user) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:hi_score) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:role) }
  end

  before(:each) do
    @users = create_list(:user, 5)
  end

  it 'exists and has attributes' do
    expect(@users.first).to be_a(User)
  end

  describe 'instance methods' do
    it 'sorts by high scores' do
      first  = User.sort_by_score(:desc).first.hi_score
      second = User.sort_by_score(:desc).second.hi_score
      third  = User.sort_by_score(:desc).third.hi_score

      expect(first).to be >= (second)
      expect(second).to be >= (third)
    end
  end
end
