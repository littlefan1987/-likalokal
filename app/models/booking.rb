class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :group_size, presence: true
end
