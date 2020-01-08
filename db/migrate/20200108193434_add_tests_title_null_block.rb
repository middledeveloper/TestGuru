# frozen_string_literal: true

class AddTestsTitleNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:tests, :title, :false)
    end

    def down
      change_column_null(:tests, :title, :true)
    end
  end
end
