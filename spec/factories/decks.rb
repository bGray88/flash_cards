FactoryBot.define do
  factory :deck do
    title { Faker::Game.title }
  end
end
