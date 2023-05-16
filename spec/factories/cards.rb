FactoryBot.define do
  factory :card do
    calc_type { ['+', '-', '*', '/'].index(['+', '-', '*', '/'].sample) }
    operator { "#{['+', '-', '*', '/'][calc_type]}" }
    number_1 do
      if "#{operator}" == '+'
        "#{Faker::Number.between(from: 1, to: 999)}"
      elsif "#{operator}" == '-'
        "#{Faker::Number.between(from: 1, to: 999)}"
      elsif "#{operator}" == '*'
        "#{Faker::Number.between(from: 1, to: 9)}"
      elsif "#{operator}" == '/'
        "#{Faker::Number.between(from: 10, to: 99)}"
      end
    end
    number_2 do
      if "#{operator}" == '+'
        "#{Faker::Number.between(from: 1, to: 999)}"
      elsif "#{operator}" == '-'
        "#{Faker::Number.between(from: 1, to: 999)}"
      elsif "#{operator}" == '*'
        "#{Faker::Number.between(from: 1, to: 9)}"
      elsif "#{operator}" == '/'
        "#{Faker::Number.between(from: 1, to: 9)}"
      end
    end
    answer { eval "#{number_1} #{operator} #{number_2}" }
  end
end
