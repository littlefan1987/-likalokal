class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to guide_dashboard_path
    else
      render 'new'
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def myactivities
    @activity = current_user.activities.order(created_at: :desc)
  end

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
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'The activity has been deleted. It was pretty boring anyway.' }
    end
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :city, :photo, :category)
  end
end
