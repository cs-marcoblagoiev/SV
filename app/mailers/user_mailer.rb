# @UserMailer
class UserMailer < ApplicationMailer
  def welcome_email(user)
    file = File.join(Rails.root, 'public', 'softvision.jpg')
    attachments['softvision.jpg'] = File.read(file)
    mail(to: user, subject: 'Welcome to My Awesome Site')
  end
end
