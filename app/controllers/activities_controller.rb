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

  def myactivities
    @activity = current_user.activities.order(created_at: :desc)
  end

  def edit
  end

  def update
    @activities = current_user.activities.order(created_at: :desc)
    activity = @activities.find(params[:id])
    if activity.update(activity_params)
      redirect_to myactivities_path, notice: "Your activity was successfully updated"
    else
      render :myactivities
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
