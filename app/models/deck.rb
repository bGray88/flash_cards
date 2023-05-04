class Deck < ApplicationRecord
  has_many :cards, dependent: :nullify

  validates :title, presence: true
end
