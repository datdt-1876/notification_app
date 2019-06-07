class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "notification_channel"
    # stream_from "notification_#{params[:user]}"
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message
  end
end
