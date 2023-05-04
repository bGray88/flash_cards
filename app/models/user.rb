class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :hi_score, presence: true
  validates :password, presence: true, on: :create

  has_secure_password

  enum role: { default: 0 }

  validates :role, presence: true

  def self.sort_by_score(dir)
    User.order(hi_score: dir)
  end
end
