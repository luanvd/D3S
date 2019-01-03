class Admin::D3sInformationsController < AdminController
  load_and_authorize_resource

  before_action :load_d3s_information, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @d3s_infor.update_attributes d3s_information_params
      flash[:success] = t ".success"
      redirect_to admin_d3s_informations_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def d3s_information_params
    params.require(:d3s_information).permit D3sInformation::UPDATE_D3S_INFOMATION_ATTRIBUTES
  end

  def load_d3s_information
    @d3s_infor = D3sInformation.first
    @d3s_infor_en = @d3s_infor.d3s_information_languages.find_by(language: "en")
    @d3s_infor_fr = @d3s_infor.d3s_information_languages.find_by(language: "fr")
  end
end
