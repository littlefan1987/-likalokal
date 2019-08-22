class UsersController < ApplicationController
  def guide_dashboard
    @activities = current_user.activities
    @bookings = current_user.guide_bookings
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to :home
  end

  def user_params
    params.require(:user).permit(:description, :avatar, :email)
  end
end
