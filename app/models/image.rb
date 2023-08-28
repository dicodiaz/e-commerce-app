class Image < ApplicationRecord
  belongs_to :cosmetic
  has_many :variants, dependent: :destroy

  validates :link, presence: true
end
