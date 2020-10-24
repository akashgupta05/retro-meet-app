class BroadcastCardJob < ApplicationJob
  queue_as :default

  def perform(card_data)
    ActionCable.server.broadcast 'card', card_data
  end
end
