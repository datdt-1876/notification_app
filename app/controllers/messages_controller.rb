class MessagesController < ApplicationController
  def create
    # ActionCable.server.broadcast "notification_channel", message: "Shit #{current_user.email}" 
    content = params[:content]

    user = User.find_by id: params[:user_id]

    puts "This is"

    NotificationsChannel.broadcast_to(
      user.to_gid_param,
      from: current_user.email,
      message: content
    )

  end
end
