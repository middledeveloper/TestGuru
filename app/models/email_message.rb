# frozen_string_literal: true

class EmailMessage
  include ActiveModel::Model
  attr_accessor :email, :name, :text

  validates :email, presence: true, format: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  validates :text, presence: true
end
