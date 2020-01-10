# frozen_string_literal: true

class AddModelsNullBlock < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_null(:categories, :title, :false)
      change_column_null(:tests, :title, :false)
      change_column_null(:tests, :level, :false)
      change_column_null(:users, :name, :false)
      change_column_null(:users, :login, :false)
      change_column_null(:users, :role, :false)
      change_column_null(:questions, :text, :false)
      change_column_null(:answers, :text, :false)
      change_column_null(:answers, :correct, :false)
    end

    def down
      change_column_null(:categories, :title, :true)
      change_column_null(:tests, :title, :true)
      change_column_null(:tests, :level, :true)
      change_column_null(:users, :name, :true)
      change_column_null(:users, :login, :true)
      change_column_null(:users, :role, :true)
      change_column_null(:questions, :text, :true)
      change_column_null(:answers, :text, :true)
      change_column_null(:answers, :correct, :true)
    end
  end
end
