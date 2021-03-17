class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :gender
  has_many :clothes

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :gender, numericality: { other_than: 1 }, allow_blank: true

  with_options presence: true do
    validates :nickname
    validates :gender
    validates :birthday
  end
end