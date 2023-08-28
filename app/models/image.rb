class Image < ApplicationRecord
  belongs_to :cosmetic

  validates :link, presence: true
end
