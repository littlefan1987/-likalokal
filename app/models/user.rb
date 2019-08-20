class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :activities
  has_many :booked_activities, through: :bookings, class_name: 'Activity'
  # has_many :guide_bookings, through: :activities, class_name: 'Booking'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def guide_bookings
    bookings = []

    activities.each do |activity|
      bookings << activity.bookings
    end

    return bookings.flatten!
  end
end
