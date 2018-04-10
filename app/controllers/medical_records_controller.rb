class MedicalRecordsController < ApplicationController

  def show
    @medical_record = MedicalRecord.find(params[:id])
  end

  def new
    @medical_record = current_user.build_medical_record
  end

  def create
    @medical_record = current_user.build_medical_record(params_medical)
    if current_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @medical_record = current_user.medical_record
  end

  def update
    @medical_record = current_user.build_medical_record(params_medical)
    if current_user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @medical_record.destroy
    redirect_to root_path
  end

  private

  def params_medical
    params.require(:medical_record).permit(:weight, :height, :birth_date, :last_donation)
  end
end
