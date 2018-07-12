class UserMailer < ApplicationMailer
  default from: 'cats@99cats.com'

  def welcome_email(user)
    #set an instance variable here so can propagate down to views
    @user = user
    @url = 'http://example.com/login'
    mail(tl: user.email, subject: 'Welcome to My Awesome Site')
  end
end
