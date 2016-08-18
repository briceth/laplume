class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @message.offer = Offer.find(params...)
    @message.save
    redirect_to offer_path(@message.offer)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
