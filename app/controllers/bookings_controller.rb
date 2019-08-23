class BookingsController < ApplicationController
  def index
   @bookings = Booking.where(user_id: current_user.id).order(created_at: :desc)
   @user = User.where(user_id: current_user.id)
   # @activities = Activity.where(activity_id: @)
  end

  def guide_index
   # @bookings = current_user.activities.bookings.sort { |x,y| y.created_at <=> x.created_at }
   # @bookings = Booking.joins(“INNER JOIN activities ON bookings.activity_id = activities.id AND activities.user_id = # {current_user.id}“)
   @bookings = Booking.joins(:activity).where(“activities.user_id = ?“, current_user.id)
  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @booking.activity = @activity
    @booking.user = current_user
    @booking.status = "pending"

    if current_user
      if @booking.save
        #redirect_to activity_path(@activity)
        redirect_to traveller_dashboard_path
      else
        render "activities/show"
      end

    else
        redirect_to new_user_session_path
    end
  end

  # cancel booking as a user
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to traveller_dashboard_path, notice: 'The booking has been deleted.' }
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :group_size)
  end
end
