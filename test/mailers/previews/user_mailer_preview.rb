# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome
		UserMailer.with(to: 'igarashi@examplle.com', name: 'igaiga').welcome
  end
end
