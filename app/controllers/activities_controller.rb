class ActivitiesController < ApplicationController
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

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :city, :category)
  end
end
