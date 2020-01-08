# frozen_string_literal: true

class AddQuestionsTextNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:questions, :text, :false)
    end

    def down
      change_column_null(:questions, :text, :true)
    end
  end
end
