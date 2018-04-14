class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user #instance variable avaiable in view
    mail(
          to: @user[:email],
          subject: "Olá #{@user[:first_name]}, obrigado por fazer parte da Easy Blood!"
        )
  end
end
