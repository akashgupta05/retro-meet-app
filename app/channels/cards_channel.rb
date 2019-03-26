class CardsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'card'
  end
end
