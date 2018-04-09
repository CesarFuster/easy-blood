class MedicalrecordsController < ApplicationController

  before_action :set_user, only: [:show, :new, :create]
  before_action :set_medicalrecord, only: [:edit, :update, :destroy]

  def show
  end

  def new
    @medicalrecord = MedicalRecord.new
  end

  def create
    @medicalrecord = MedicalRecord.new(params_medical)
    @user.medicalrecord = @medicalrecord
    if medicalrecord.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @medicalrecord.update(params_medical)
    if @medicalrecord.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @medicalrecord.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_medicalrecord
    @medicalrecord = MedicalRecord.find(params[:id])
  end

  def params_medical
    params.require(:medicalrecord).permit(:weight, :height, :birth_date, :last_donation)
  end
end
