# frozen_string_literal: true

class AddCategoriesTitleNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:categories, :title, :false)
    end

    def down
      change_column_null(:categories, :title, :true)
    end
  end
end
