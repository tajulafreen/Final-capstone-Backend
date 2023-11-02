class Doctor < ApplicationRecord
  has_many :reservation, dependent: :destroy
  # validations
  validates :name, presence: true
  validates :fee, numericality: { greater_than_or_equal_to: 0.0 }
end
