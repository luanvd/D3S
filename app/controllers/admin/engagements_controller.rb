class Admin::EngagementsController < AdminController
  before_action :load_engagement, except: [:index, :new, :create]

  def index
    @engagements = Engagement.all.includes(:engagement_translations)
  end

  def show
  end

  def new
    @engagement = Engagement.new
    build_translation @engagement
  end

  def create
    @engagement = Engagement.new engagement_params
    if @engagement.save
      flash[:success] = t ".success"
      redirect_to admin_engagements_path
    else
      flash.now[:failed] = t ".failed"
      render :new
    end
  end

  def edit
    @engagement_translations = @engagement.engagement_translations
  end

  def update
    if @engagement.update_attributes engagement_params
      flash[:success] = t ".success"
      redirect_to admin_engagements_path
    else
      flash.now[:failed] = t ".failed"
      render :edit
    end
  end

  def destroy
    if @engagement.destroy
      flash[:success] = t ".success"
    else
      flash[:failed] = t ".failed"
    end
    redirect_to admin_engagements_path
  end

  private
  def engagement_params
    params.require(:engagement).permit :title, :content, engagement_translations_attributes: [:id, :language, :title, :content]
  end

  def load_engagement
    @engagement = Engagement.includes(:engagement_translations).find(params[:id])
  end

  def build_translation engagement
    @engagement_translations = []
    Settings.translation_languages.each do |lang|
      @engagement_translations << engagement.engagement_translations.new(language: lang)
    end
    @engagement_translations
  end
end