class Card < ApplicationRecord
  belongs_to :deck, optional: true

  validates :question, presence: true
  validates :answer, presence: true

  enum calc_type: { addition: 0, subtraction: 1, multiplication: 2 }

  validates :calc_type, presence: true
end
