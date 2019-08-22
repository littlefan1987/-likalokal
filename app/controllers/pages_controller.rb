class PagesController < ApplicationController
  def home
    @activities = Activity.all

    city = params[:city]
    category = params[:category]
    @activities = @activities.where(category: category) if category.present?
    @activities = @activities.near(params[:city]) if params[:city].present?

  end
end
