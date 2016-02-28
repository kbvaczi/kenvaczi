class ContactMailer < ActionMailer::Base

	default :from => "\"#{ENV['HOST']} Contact Form\" <#{ENV['EMAIL_SENDING_ADDRESS']}>"

	def contact_mail(sender)
		@sender = sender
		mail(:to => ENV['EMAIL_RECEIVING_ADDRESS'], :subject => "#{ENV['HOST']} Contact Form")	
	end
  
end