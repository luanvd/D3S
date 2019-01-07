class Admin::CustomersController < AdminController
  load_and_authorize_resource

  before_action :load_customer_data, only: [:show, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def destroy
    if @customer.destroy
      flash[:success] = t(".success")
    else
      flash[:danger] = t(".failed")
    end
    redirect_to admin_customers_path
  end

  private
  def load_customer_data
    @customer = Customer.find params[:id]
  end
end
