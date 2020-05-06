# frozen_string_literal: true

class EmailMessagesController < ApplicationController
  def index
    @message ||= EmailMessage.new
  end

  def create
    @message = EmailMessage.new(set_params)

    if @message.valid?
      EmailMessagesMailer.feedback(@message).deliver_now
      redirect_to email_messages_index_path, notice: 'Message sent successfully.'
    else
      render :index
    end
  end

  private

  def set_params
    params.require(:email_message).permit(:email, :name, :text)
  end
end
