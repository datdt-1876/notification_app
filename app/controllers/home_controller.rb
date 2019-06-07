class HomeController < ApplicationController
  def index
  end

  def create
    # NotificationsChannel.broadcast_to(
    #   current_user,
    #   title: 'New things!',
    #   body: 'All the news fit to print'
    # )
    ActionCable.server.broadcast "notification_channel", message: "Shit #{current_user.email}" 
  end
end
