# frozen_string_literal: true

class AddAnswersTextNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:answers, :text, :false)
    end

    def down
      change_column_null(:answers, :text, :true)
    end
  end
end
