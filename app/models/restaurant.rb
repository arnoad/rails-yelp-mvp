class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
end
