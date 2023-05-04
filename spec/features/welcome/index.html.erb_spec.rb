require 'rails_helper'

RSpec.describe 'Welcome-Index' do
  before(:each) do
    create_list(:user, 10)
    visit root_path
  end

  it 'diplays title' do
    expect(page).to have_content("Flash Cards")
  end

  it 'diplays high scores' do
    within("div#user-#{User.sort_by_score(:desc).first.id}.high-score") do
      expect(page).to have_content("High Score:")
    end
    within("div.high-scores") do
      expect("#{User.sort_by_score(:desc).first.last_name}").to appear_before("#{User.sort_by_score(:desc).second.last_name}")
      expect("#{User.sort_by_score(:desc).second.last_name}").to appear_before("#{User.sort_by_score(:desc).third.last_name}")
    end
  end
end
