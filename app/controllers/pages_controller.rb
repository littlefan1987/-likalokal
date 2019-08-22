class PagesController < ApplicationController
  def home
    @activities = Activity.all
    city = params[:city]
    category = params[:category]
    @activities = @activities.where(category: category) if category.present?
    @activities = @activities.near(city) if city.present?
  end
end
