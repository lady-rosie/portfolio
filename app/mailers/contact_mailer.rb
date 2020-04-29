class ContactMailer < ApplicationMailer

  def contact(message)
    @message = message
    mail(to: "rose.grondin@gmail.com", subject: 'New message from your portfolio')
  end

end
