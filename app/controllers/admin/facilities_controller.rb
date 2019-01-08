class Admin::FacilitiesController < AdminController
  load_and_authorize_resource

  before_action :load_facitilies, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @facility.update_attributes facility_params
      flash[:success] = t ".success"
      redirect_to admin_facilities_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def facility_params
    params.require(:facility).permit Facility::UPDATE_FACILITY_ATTRIBUTES
  end

  def load_facitilies
    @facility = Facility.first
    @facility_en = @facility.facility_languages.find_by(language: "en")
    @facility_fr = @facility.facility_languages.find_by(language: "fr")
  end
end
