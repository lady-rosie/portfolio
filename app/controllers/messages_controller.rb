class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      ContactMailer.contact(@message).deliver_now
      redirect_to root_path
      flash[:notice] = "message successfully sent!"
    else
      flash[:notice] = "something went wrong :("
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
