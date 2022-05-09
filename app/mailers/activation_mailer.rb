class ActivationMailer < ApplicationMailer
    default from: '404thecircle@notifications.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to the React.js Forum-CMS Demo')
  end

  def password_reset_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Forgot your password?')
  end
end
