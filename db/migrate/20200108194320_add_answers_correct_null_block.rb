# frozen_string_literal: true

class AddAnswersCorrectNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:answers, :correct, :false)
    end

    def down
      change_column_null(:answers, :correct, :true)
    end
  end
end
