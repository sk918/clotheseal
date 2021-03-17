class Cloth < ApplicationRecord
  belongs_to :user

  validates :birthday, presence: true
end
