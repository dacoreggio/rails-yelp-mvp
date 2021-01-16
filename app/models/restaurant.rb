class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :address, presence: true
  validates :phone_number, presence: true
end
