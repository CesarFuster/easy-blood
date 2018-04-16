class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def home
    @source = Rails.application.routes.recognize_path(request.referrer)
    @campaigns = Campaign.where("end_date > ?", Date.today).order(:start_date).first(6)
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end
end
