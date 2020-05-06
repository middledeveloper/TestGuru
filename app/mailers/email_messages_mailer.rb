# frozen_string_literal: true

class EmailMessagesMailer < ApplicationMailer
  default from: "#{ENV['SMTP_USERNAME']}@gmail.com"

  def feedback(email_message)
    @feedback_email = email_message.email
    @feedback_name = email_message.name
    @feedback_text = email_message.text

    mail to: "#{ENV['SMTP_USERNAME']}@gmail.com"
  end
end
