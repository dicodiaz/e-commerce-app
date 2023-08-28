class Discount < ApplicationRecord
  has_many :cosmetics, dependent: :nullify

  validates :name, presence: true
  validates :percent, presence: true
end
