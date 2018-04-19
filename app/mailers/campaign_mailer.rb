class CampaignMailer < ApplicationMailer
  def new_campaign(user_id)
    @user = User.find(user_id)
    mail(
          to: @user[:email],
          subject: "Olá #{@user[:first_name]}, uma campanha foi criada perto de você!"
        )
  end
end
