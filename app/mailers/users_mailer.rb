class UsersMailer < ApplicationMailer
  default from: "registration@FlashCards.com"

  def welcome_email(user_id)
    @user = User.find(user_id)

    mail(
      to:      @user.email,
      subject: "Welcome, to Flash Cards!"
    ) do |format|
      format.text
      format.html
    end
  end
end
