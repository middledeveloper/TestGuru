# frozen_string_literal: true

class AddAnswersCorrectDefaultValue < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_default(:answers, :correct, false)
    end

    def down
      change_column_default(:answers, :correct, nil)
    end
  end
end
