# frozen_string_literal: true

class AddModelsDefaultValues < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_default(:answers, :correct, false)
      change_column_default(:tests, :level, 0)
    end

    def down
      change_column_default(:answers, :correct, nil)
      change_column_default(:tests, :level, nil)
    end
  end
end
