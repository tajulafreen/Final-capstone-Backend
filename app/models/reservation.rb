class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :doctor

    # fields validations
    validates :user, presence: true
    validates :doctor, presence: true
    validates :city, presence: true
    validates :date, presence: true
end
