# frozen_string_literal: true

class AddQuestionsTestIdNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:questions, :test_id, :false)
    end

    def down
      change_column_null(:questions, :test_id, :true)
    end
  end
end
