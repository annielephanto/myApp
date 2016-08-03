class UserMailer < ApplicationMailer
	default from: "annie55880000@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'annie55880000@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
