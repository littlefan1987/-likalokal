class Activity < ApplicationRecord
  CATEGORY = [
    'Occult & Esotericism',
    'True Crime',
    'Culture & History',
    'Catastrophies'
  ]

  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
