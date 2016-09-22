class UserMailer < ApplicationMailer

<<<<<<< HEAD
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user=user

    mail to: user.email, subject: "アカウント有効化"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
=======
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

>>>>>>> a10bfc58d22038db71883d0c55841ed599741361
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
