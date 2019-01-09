class HomePagesController < ApplicationController
  before_action :load_origines, :load_d3s_information, :load_engagements, :load_products, 
    :load_producers, only: :index

  def index
    @customer = Customer.new

    @slider_show = SliderShow.first
    @slider_images = @slider_show.slider_images

    @popup = Popup.includes(:popup_translations).first
    @facility = Facility.includes(:facility_languages).first
  end

  private
  def load_origines
    @origine = Origine.first
    @origine_language = @origine.origine_languages.find_by_language(locale)
  end

  def load_d3s_information
    @d3s_info = D3sInformation.includes(:d3s_information_languages).first
  end

  def load_engagements
    @engagements = Engagement.all.includes(:engagement_translations)
  end

  def load_products
    @products = Product.all.includes(:product_translations)
  end

  def load_producers
    @producers = Producer.all.includes(:producer_translations)
  end
end
