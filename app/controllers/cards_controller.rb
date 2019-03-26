class CardsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    user = current_user
    card = user.card.new(card_params)
    if card.save
      ActionCable.server.broadcast 'cards',
                                   card_id: card.id,
                                   card_content: card.content,
                                   user_id: user.id,
                                   user: user.first_name
    end
  end

  def update; end

  def destroy; end

  private

  def card_params
    params.require(:card).permit(:content)
  end
end
