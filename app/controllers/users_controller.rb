class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!
  end

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
    params.require(:user).permit(:first_name, :last_name, :email, :notes)
  end
end
