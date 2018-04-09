class InstitutionsController < ApplicationController

  before_action :set_institution, only [:show, :edit, :update, :destroy]

  def index
    @institutions = Institution.all
  end

  def show
  end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(inst_params)
    if @institution.save
      redirect_to institution_path(@institution)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @institution.update(inst_params)
    if @institution.save
      redirect_to institution_path(@institution)
    else
      render :edit
    end
  end

  def destroy
    @institution.destroy
    redirect_to institutions_path
  end

  private

  def set_institution
    Institution.find(params[:id])
  end

  def inst_params
    params.require(:institution).permit(:name, :address, :email_resp, :name_resp, :phone_number_resp)
  end
end
