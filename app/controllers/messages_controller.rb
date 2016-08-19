class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(content: message_params[:content])
    @message.user = current_user
    @writer = User.find(message_params[:user])
    @message.offer = Offer.find_by user: @writer
    @message.save
    redirect_to offer_path(@message.offer)
  end

  private

  def message_params
    params.require(:message).permit(:content, :user)
  end

end

