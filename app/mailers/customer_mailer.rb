class CustomerMailer < ApplicationMailer
  def send_email_create_customer customer
    @customer = customer
    mail(to: Settings.admin_email, subject: "Send Password To User")
  end
end
