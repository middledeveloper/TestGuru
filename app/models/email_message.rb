# frozen_string_literal: true

class EmailMessage < ApplicationRecord
  validates :email, presence: true, format: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/
  validates :text, presence: true
end
