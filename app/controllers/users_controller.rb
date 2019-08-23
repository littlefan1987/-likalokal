class UsersController < ApplicationController
  def guide_dashboard
    @activities = current_user.activities
    @bookings = current_user.guide_bookings
  end

  def traveller_dashboard
    @bookings = current_user.bookings
  end
end
