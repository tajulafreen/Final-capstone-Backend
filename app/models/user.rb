class User < ApplicationRecord
  has_many :reservations, foreign_key: 'user_id', dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: true
end
