class MessagesController < ApplicationController
  # show all messages
  def index
    @messages = Message.all
  end

  # show new message
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to 'messages'
    else
      render 'new'
    end
  end

  private
    def message_params
      params.require(:message).permit(:user, :content)
    end

end
