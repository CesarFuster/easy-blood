class CampaignMailer < ApplicationMailer
  def new_campaign(user)
    @user = user
    mail(
          to: @user[:email],
          subject: "#{@user[:first_name]}, uma campanha foi criada!"
        )
  end
end
