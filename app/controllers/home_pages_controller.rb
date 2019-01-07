class HomePagesController < ApplicationController

  def index
    @customer = Customer.new
  end
end
