class Brand < ApplicationRecord
  has_many :cosmetics, dependent: :nullify

  validates :name, presence: true
end
