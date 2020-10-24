class UsersController < ApplicationController
  # before_filter :authenticate_user!

  def update
    @user = User.find(params[:id])
    @user.update_attributes!(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
