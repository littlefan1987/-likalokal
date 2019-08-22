class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :activities
  has_many :booked_activities, through: :bookings, class_name: 'Activity'
  has_many_attached :photo

  geocoded_by :address
  # after_validation :geocode, if: :address_changed?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def guide?
    return activities.count.positive?
  end

  # def city
  #   return "" if self.address.nil?

  #   return self.address.split(" ")[-1].capitalize
  # end
end

