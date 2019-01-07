class HomePagesController < ApplicationController

  def index
    @customer = Customer.new
    @slider_show = SliderShow.first
    @slider_images = @slider_show.slider_images
  end
end
