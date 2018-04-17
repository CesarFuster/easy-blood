class CampaignMailer < ApplicationMailer
  def new_campaign(user, campaign)
    @user = user
    @campaign = campaign
    mail(
          to: @user[:email],
          subject: "Olá #{@user[:first_name]}, uma campanha foi criada perto de você!"
        )
  end
end
