class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      @message.save
      ContactMailer.contact(@message).deliver_now
      flash[:notice] = "message successfully sent!"
    else
      flash[:notice] = "something went wrong :("
    end
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
