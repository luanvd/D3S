class Admin::ProducersController < AdminController
  load_and_authorize_resource

  before_action :load_producer, except: [:index, :new, :create]

  def index
    @producers = Producer.all.includes(:producer_translations)
  end

  def show
  end

  def new
    @producer = Producer.new
    build_translation @producer
  end

  def create
    @producer = Producer.new producer_params
    if @producer.save
      flash[:success] = t ".success"
      redirect_to admin_producers_path
    else
      flash.now[:failed] = t ".failed"
      render :new
    end
  end

  def edit
    @producer_translations = @producer.producer_translations
  end

  def update
    if @producer.update_attributes producer_params
      flash[:success] = t ".success"
      redirect_to admin_producers_path
    else
      flash.now[:failed] = t ".failed"
      render :edit
    end
  end

  def destroy
    if @producer.destroy
      flash[:success] = t ".success"
    else
      flash[:failed] = t ".failed"
    end
    redirect_to admin_producers_path
  end

  private
  def producer_params
    params.require(:producer).permit :image, producer_translations_attributes: [:id, :language, :title]
  end

  def load_producer
    @producer = Producer.includes(:producer_translations).find(params[:id])
  end

  def build_translation producer
    @producer_translations = []
    Settings.translation_languages.each do |lang|
      @producer_translations << producer.producer_translations.new(language: lang)
    end
    @producer_translations
  end
end