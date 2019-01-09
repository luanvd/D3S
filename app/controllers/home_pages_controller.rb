class HomePagesController < ApplicationController
  before_action :load_origines, only: :index

  def index
    @customer = Customer.new

    @slider_show = SliderShow.first
    @slider_images = @slider_show.slider_images
  end

  private
  def load_origines
    @origine = Origine.first
    @origine_language = @origine.origine_languages.find_by_language(locale)
  end
end
