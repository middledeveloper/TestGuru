# frozen_string_literal: true

class AddTestsLevelNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:tests, :level, :false)
    end

    def down
      change_column_null(:tests, :level, :true)
    end
  end
end
