class CustomersController < ApplicationController

  def create
    @customer = Customer.new customer_params
    if @customer.save
      CustomerMailer.send_email_create_customer(@customer).deliver_now
      redirect_to root_url
    end
  end

  private
  def customer_params
    params.require(:customer).permit Customer::CREATE_ATTRIBUTE
  end
end
