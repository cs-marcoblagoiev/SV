class SendEmailsController < ApplicationController
	def send_email
		UserMailer.welcome_email("example@etst.com").deliver_now

	end
end
