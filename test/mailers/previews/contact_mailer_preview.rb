# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact
    message = Message.last
    ContactMailer.contact(message)
  end

end

