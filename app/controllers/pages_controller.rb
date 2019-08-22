class PagesController < ApplicationController
  def home
    @activities = Activity.all
    if params[:city].present?
      @activities = Activity.where(params[:city])
    else
      @movies = Activity.all
    end
  end
end
