class Variant < ApplicationRecord
  belongs_to :image

  validates :name, presence: true
  validates :hex_code, presence: true
end
