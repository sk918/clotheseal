class Cloth < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :wear_day, presence: true
end
