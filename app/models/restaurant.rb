class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :address, presence: true
end
