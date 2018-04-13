class CampaignsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :set_institution, only: [:edit, :update]

  def index
    @campaigns = Campaign.order(:start_date)
  end

  def show
    @cpoint = @campaign.cpoint
    @marker =
      {
        lat: @cpoint.latitude,
        lng: @cpoint.longitude
      }
  end

  def new
    @campaign = Campaign.new
  end

  def create
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end

  def edit
    @campaign.institution = @institution
  end

  def update
    @campaign.update(params_campaign)
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :edit
    end
  end

  def destroy
    @campaign.destroy
    redirect_to campaigns_path
  end

  private

  def set_institution
    @institution = Institution.find(params[:institution_id])
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def params_campaign
    params.require(:campaign).permit(:start_date, :end_date, :location, :institutional_id, :cpoint_id)
  end

end
