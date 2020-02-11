class UserMailer < ApplicationMailer
    default from: 'notification@example.com'

    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Welcome to Musenet')
    end
end
