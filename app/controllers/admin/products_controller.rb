class Admin::ProductsController < AdminController
  load_and_authorize_resource

  before_action :load_product, except: [:index, :new, :create]

  def index
    @products = Product.all.includes(:product_translations)
  end

  def show
  end

  def new
    @product = Product.new
    build_translation @product
  end

  def create
    @product = Product.new product_params
    if @product.save
      flash[:success] = t ".success"
      redirect_to admin_products_path
    else
      flash.now[:failed] = t ".failed"
      render :new
    end
  end

  def edit
    @product_translations = @product.product_translations
  end

  def update
    if @product.update_attributes product_params
      flash[:success] = t ".success"
      redirect_to admin_products_path
    else
      flash.now[:failed] = t ".failed"
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:success] = t ".success"
    else
      flash[:failed] = t ".failed"
    end
    redirect_to admin_products_path
  end

  private
  def product_params
    params.require(:product).permit :image, product_translations_attributes: [:id, :language, :title, :content]
  end

  def load_product
    @product = Product.includes(:product_translations).find(params[:id])
  end

  def build_translation product
    @product_translations = []
    Settings.translation_languages.each do |lang|
      @product_translations << product.product_translations.new(language: lang)
    end
    @product_translations
  end
end