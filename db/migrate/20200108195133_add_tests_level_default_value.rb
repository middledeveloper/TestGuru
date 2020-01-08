# frozen_string_literal: true

class AddTestsLevelDefaultValue < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_default(:tests, :level, 0)
    end

    def down
      change_column_default(:tests, :level, nil)
    end
  end
end
