class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!,raise: false, only: [:index, :show]
  before_action :set_activity, only: [:edit, :update, :destroy]

  def index
    # @activities = Activity.all
    @activities = Activity.geocoded #returns flats with coordinates

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end

    city = params[:city]
    category = params[:category]
    @activities = @activities.where(category: category) if category
    @activities = @activities.select { |activity| activity.user.city.downcase == params[:city].downcase } if ( params[:city] && !params[:city].empty?)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
     # redirect_to myactivities_path
      redirect_to guide_dashboard_path
    else
      render 'new'
    end
  end

  def show
    @activity = Activity.find(params[:id])
    @markers = [{ lat: @activity.latitude, lng: @activity.longitude }]
    @booking = Booking.new
    @bookings = @activity.bookings
  end

  # def myactivities
   # @activity = current_user.activities.order(created_at: :desc)
  # end

  def edit
  end

  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to myactivities_path, notice: 'The activity has been deleted. It was pretty boring anyway.' }
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :address, :photo, :category)
  end
end
