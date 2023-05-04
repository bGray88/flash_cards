FactoryBot.define do
  factory :card do
    calc_type { ['+', '-', '*'].index(['+', '-', '*'].sample) }
    question  { "#{Faker::Number.between(from: 1, to: 99)} #{['+', '-', '*'][calc_type]} #{Faker::Number.between(from: 1, to: 99)}" }
    answer    { eval question }
  end
end
