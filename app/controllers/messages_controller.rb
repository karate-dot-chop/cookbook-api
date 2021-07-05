class MessagesController < ApplicationController

  def index
    messages = Message.all
    render json: messages.order(:created_at => :desc)
  end

  def create
    message = Message.new(
      user_id: current_user.id,
      body: params[:body]
    )
    if message.save
      ActionCable.server.broadcast "messages_channel", message
    else
      render json: {errors: message.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
