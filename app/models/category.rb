class Category < ApplicationRecord
  has_and_belongs_to_many :cosmetics

  validates :name, presence: true
end
