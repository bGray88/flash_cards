FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    email      { Faker::Internet.email }
    hi_score   { Faker::Number.non_zero_digit }
    password   { SecureRandom.hex(16) }
  end
end
