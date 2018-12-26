class UserMailer < ApplicationMailer
  
  def send_password_to_user email, password
    @email = email
    @password = password
    mail(to: @email, subject: "Send Password To User")
  end
end
