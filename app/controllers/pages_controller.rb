class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @campaigns = Campaign.where("end_date > ?", Date.today).order(:start_date).first(6)
  end

end
