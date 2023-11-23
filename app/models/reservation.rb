class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  # fields validations
  validates :user, presence: true
  validates :doctor, presence: true
  validates :city, presence: true
  validates :date, presence: true
  validate :date_in_future

  private

  def date_in_future
    return unless date.present? && date < Date.today

    errors.add(:date, 'must be in the future')
  end
end
