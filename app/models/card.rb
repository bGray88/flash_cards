class Card < ApplicationRecord
  belongs_to :deck, optional: true

  validates :number_1, presence: true
  validates :number_2, presence: true
  validates :operator, presence: true
  validates :answer, presence: true

  enum calc_type: { addition: 0, subtraction: 1, multiplication: 2, division: 3 }

  validates :calc_type, presence: true
end
