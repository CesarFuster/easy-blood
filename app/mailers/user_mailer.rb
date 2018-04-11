class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user #instance variable avaiable in view
    # @greeting = "Hi"


# concertar @user.first_name
    mail(
          to: @user[:email],
          subject: "#{@user[:first_name]}, cadastro realizado com sucesso!"
        )
  end
end
