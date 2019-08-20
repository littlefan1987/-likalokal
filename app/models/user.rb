class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :activities
  has_many :booked_activities, through: :bookings, class_name: 'Activity'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
