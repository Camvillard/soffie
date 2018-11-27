class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  def welcome(user)
    @user = user

    mail to: @user.email, subject: "Hi, I'm Soffie. Welcome Claire!"
  end

  def book_choice(final_book)
    @user = final_book.user
    @final_book = final_book
    mail to: @user.email, subject: "Enjoy #{@final_book.title}"
  end

end
