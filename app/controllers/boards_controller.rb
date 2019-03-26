class BoardsController < ApplicationController
  before_filter :authenticate_user!

  def create; end

  def update; end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
