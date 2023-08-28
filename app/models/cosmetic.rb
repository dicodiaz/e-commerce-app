class Cosmetic < ApplicationRecord
  belongs_to :brand, optional: true
  belongs_to :discount, optional: true
  has_and_belongs_to_many :categories
  has_many :images

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
