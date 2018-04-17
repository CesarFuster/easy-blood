class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :about_us]

  def home
    @source = Rails.application.routes.recognize_path(request.referrer) unless request.referrer.nil?
    @campaigns = Campaign.where("end_date > ?", Date.today).order(:start_date).first(6)
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def about_us
    @team = {thiago: {name: "Thiago Scatigno", email: "thiago@icity.com.br", phrase: "Equipe nota 10"}, marcos: {name: "Marcos Lessa", email: "mlessa@gmail.com", phrase: "O Brazil eh uma merda"}, andre: {name: "Andre Miotto", email: "miotto082@gmail.com", phrase: "Whaaaaaaattttt"}, cesar: {name: "Cesar Fuster", email: "cfuster@uol.com.br", phrase: "Uai o que? Sua bicha"}}
  end
end
